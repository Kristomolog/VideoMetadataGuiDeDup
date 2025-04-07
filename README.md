# Video Metadata Görüntüleyici

Bu uygulama, video dosyalarının metadata bilgilerini görüntülemenizi sağlar. Aynı zamanda videoların sürelerine göre filtreleme ve metadata bilgilerini dışa aktarma işlemleri yapabilirsiniz.

## Özellikler

- Klasörleri sürükleyip bırakarak video dosyalarını listeleme.
- Videoların süresi, bitrate'i ve dosya adı gibi metadata bilgilerini görüntüleme.
- Çift tıklama ile dosya konumuna gitme.
- Video metadata bilgilerini `.txt` veya `.json` formatında dışa aktarma.
- Videoları sürelerine göre filtreleme.
- Türkçe ve İngilizce dil desteği.

## Kurulum

### Gerekli Araçlar

- **Qt5**: Uygulama Qt5 ile geliştirilmiştir.
- **FFmpeg (ffprobe)**: Video metadata bilgilerini almak için FFmpeg araçlarını kullanıyoruz. [FFmpeg İndir](https://ffmpeg.org/download.html)

### Adım 1: Qt5 ve FFmpeg Kurulumu

#### Qt5 Kurulumu

Ubuntu için Qt5'i kurmak için şu komutları kullanabilirsiniz:

```bash
sudo apt-get update
sudo apt-get install qt5-qmake qtbase5-dev qtchooser qtbase5-dev-tools
sudo apt-get install ffmpeg
```


### Adım 2: Projeyi Derlemek

Projeyi derlemek için önce Qt projesini oluşturup sonra CMake ile derleme işlemini gerçekleştireceğiz.

Projeyi İndir:
```
git clone https://github.com/kullaniciadiniz/VideoMetadataGui.git
cd VideoMetadataGui
```
CMake ile Derleme:
```
mkdir build
cd build
cmake ..
make
```
Uygulamayı Başlatma:
```
./VideoMetadataGui
```
## Kullanım
  Uygulama açıldığında "Klasör Seç" butonuna tıklayarak video dosyalarının bulunduğu bir klasör seçin.
    Klasördeki .mp4, .avi, .mov uzantılı videolar otomatik olarak listelenecektir.

 Bir video dosyasına çift tıklayarak dosyanın bulunduğu klasöre gitmek mümkündür.
    Bir video dosyasını seçerek metadata bilgilerini görüntüleyebilirsiniz.

Metadata bilgilerini dışa aktarmak için "Metadata'yı Kaydet" seçeneğini kullanabilirsiniz.

Videoların süresine göre filtreleme yapabilirsiniz.

## Katkıda Bulunma

Eğer katkıda bulunmak isterseniz, lütfen pull request göndermeden önce bir issue açın veya öneri bırakın.