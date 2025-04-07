#include <QApplication>
#include <QMainWindow>
#include <QPushButton>
#include <QVBoxLayout>
#include <QFileDialog>
#include <QTextEdit>
#include <QDropEvent>
#include <QMimeData>
#include <QListWidget>
#include <QLabel>
#include <QDir>
#include <QFileInfo>
#include <QDebug>
#include <QProcess>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QDesktopServices>
#include <QAction>
#include <QTranslator>
#include <QMenuBar>

class VideoWindow : public QMainWindow {
    Q_OBJECT

public:
    VideoWindow() {
        setAcceptDrops(true);

        // Layout ve butonlar
        QWidget *centralWidget = new QWidget(this);
        QVBoxLayout *layout = new QVBoxLayout(centralWidget);

        QPushButton *openButton = new QPushButton(tr("Klasör Seç"), this);
        connect(openButton, &QPushButton::clicked, this, &VideoWindow::openFolder);

        videoList = new QListWidget(this);
        connect(videoList, &QListWidget::itemClicked, this, &VideoWindow::displayMetadata);
        connect(videoList, &QListWidget::itemDoubleClicked, this, &VideoWindow::openFileLocation);

        metadataDisplay = new QTextEdit(this);
        metadataDisplay->setReadOnly(true);

        layout->addWidget(openButton);
        layout->addWidget(videoList);
        layout->addWidget(metadataDisplay);

        setCentralWidget(centralWidget);
        setWindowTitle(tr("Video Metadata Görüntüleyici"));
        resize(600, 400);

        // Menü ve kaydetme
        QAction *saveAction = new QAction(tr("Metadata'yı Kaydet"), this);
        connect(saveAction, &QAction::triggered, this, &VideoWindow::saveMetadata);
        menuBar()->addAction(saveAction);
    }

protected:
    void dragEnterEvent(QDragEnterEvent *event) override {
        if (event->mimeData()->hasUrls()) {
            event->acceptProposedAction();
        }
    }

    void dropEvent(QDropEvent *event) override {
        QList<QUrl> urls = event->mimeData()->urls();
        for (const QUrl &url : urls) {
            QString path = url.toLocalFile();
            QFileInfo info(path);
            if (info.isDir()) {
                processFolder(path);
            }
        }
    }

private slots:
    void openFolder() {
        QString dirPath = QFileDialog::getExistingDirectory(this, tr("Klasör Seç"));
        if (!dirPath.isEmpty()) {
            processFolder(dirPath);
        }
    }

    void displayMetadata(QListWidgetItem *item) {
        QString path = item->data(Qt::UserRole).toString();
        metadataDisplay->setPlainText(getVideoMetadata(path));
    }

    void saveMetadata() {
        QListWidgetItem *item = videoList->currentItem();
        if (item) {
            QString path = item->data(Qt::UserRole).toString();
            QString metadata = getVideoMetadata(path);
            QString savePath = QFileDialog::getSaveFileName(this, tr("Metadata Kaydet"), "", "Text Files (*.txt);;JSON Files (*.json)");
            if (!savePath.isEmpty()) {
                QFile file(savePath);
                if (file.open(QIODevice::WriteOnly)) {
                    QTextStream stream(&file);
                    stream << metadata;
                    file.close();
                }
            }
        }
    }

    void filterVideosByDuration(float minDuration, float maxDuration) {
        QList<QListWidgetItem*> items = videoList->findItems("", Qt::MatchContains);
        for (auto item : items) {
            QString videoPath = item->data(Qt::UserRole).toString();
            float duration = getVideoDuration(videoPath);
            if (duration < minDuration || duration > maxDuration) {
                item->setHidden(true);
            } else {
                item->setHidden(false);
            }
        }
    }

    void openFileLocation(QListWidgetItem *item) {
        QString path = item->data(Qt::UserRole).toString();
        QFileInfo fileInfo(path);
        if (fileInfo.exists()) {
            QDesktopServices::openUrl(QUrl::fromLocalFile(fileInfo.absolutePath()));
        }
    }

private:
    QListWidget *videoList;
    QTextEdit *metadataDisplay;

    void processFolder(const QString &folderPath) {
        QDir dir(folderPath);
        QStringList videos = dir.entryList(QStringList() << "*.mp4" << "*.avi" << "*.mov", QDir::Files);
        videoList->clear();
        for (const QString &videoFile : videos) {
            QString fullPath = dir.absoluteFilePath(videoFile);
            QListWidgetItem *item = new QListWidgetItem(videoFile);
            item->setData(Qt::UserRole, fullPath);
            videoList->addItem(item);
        }
    }

    QString getVideoMetadata(const QString &videoPath) {
        QProcess process;
        QStringList args = {
            "-v", "quiet",
            "-print_format", "json",
            "-show_format",
            "-show_streams",
            videoPath
        };
        process.start("ffprobe", args);
        process.waitForFinished();

        QByteArray output = process.readAllStandardOutput();
        QJsonDocument doc = QJsonDocument::fromJson(output);
        QJsonObject obj = doc.object();

        QString result;
        if (obj.contains("format")) {
            QJsonObject format = obj["format"].toObject();
            result += tr("Dosya adı: ") + format["filename"].toString() + "\n";
            result += tr("Süre: ") + format["duration"].toString() + " sn\n";
            result += tr("Bitrate: ") + format["bit_rate"].toString() + "\n";
        }
        return result;
    }

    float getVideoDuration(const QString &videoPath) {
        QString metadata = getVideoMetadata(videoPath);
        return metadata.split("\n").at(1).split(":").at(1).trimmed().toFloat();
    }
};

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    // Dil desteğini yükle
    QTranslator translator;
    if (QLocale::system().name().startsWith("tr")) {
        translator.load("translations/app_tr.qm");
    } else {
        translator.load("translations/app_en.qm");
    }
    app.installTranslator(&translator);

    VideoWindow window;
    window.show();
    return app.exec();
}

#include "main.moc"
