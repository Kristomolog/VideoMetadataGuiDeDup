### 1.Lisans

Bu proje MIT lisansı altında dağıtılmaktadır. Daha fazla bilgi için LICENSE dosyasını inceleyebilirsiniz.


---

### 2. **`HELP.md` Dosyası:**

`HELP.md` dosyası, kullanıcıların karşılaşabileceği yaygın sorunları ve çözümleri içerebilir. Bu dosya, daha ayrıntılı bilgi sağlar ve kullanıcıların uygulamayı sorunsuz bir şekilde çalıştırmasına yardımcı olur.

#### **`HELP.md` İçeriği:**

```markdown
# Video Metadata Görüntüleyici - Yardım

Bu dosya, uygulamayı kullanırken karşılaşabileceğiniz yaygın sorunlar ve çözümler hakkında bilgi sağlar.

## 1. Uygulama Çalışmıyor

**Sorun**: Uygulama açılmıyor veya başlatılamıyor.

**Çözüm**: Aşağıdaki adımları izleyin:

1. **Qt5 ve FFmpeg'in Kurulu Olduğundan Emin Olun**:
    - Qt5 ve FFmpeg kurulumlarının doğru şekilde yapıldığından emin olun. 
    - FFmpeg, video metadata verilerini almak için gereklidir.

2. **Bağımlılıkların Kurulu Olduğunu Kontrol Edin**:
    - Uygulama Qt5 ile geliştirilmiştir, bu yüzden `qt5-qmake`, `qtbase5-dev` ve diğer gerekli Qt5 paketlerinin kurulu olduğundan emin olun.

3. **Çevresel Değişkenleri Kontrol Edin**:
    - `ffprobe` komutunun terminalde çalıştığından emin olun. Eğer çalışmıyorsa, FFmpeg'in kurulu olduğundan ve `ffprobe`'un sistem yolunda (PATH) bulunduğundan emin olun.

## 2. Klasör Seçme

**Sorun**: Uygulama klasörü açtığında hiç video görünmüyor.

**Çözüm**: 

1. **Klasörün Video Dosyaları İçerdiğinden Emin Olun**:
    - Sadece `.mp4`, `.avi`, `.mov` uzantılı video dosyaları listeye alınmaktadır. Farklı türde dosyalar varsa, bunlar gözükmeyebilir.

2. **Klasörün Uygulamanın Okuma Yetkisine Sahip Olduğundan Emin Olun**:
    - Klasöre okuma yetkisi olmadığında video dosyaları yüklenmeyebilir.

## 3. Metadata Bilgileri Görüntülenemiyor

**Sorun**: Videoların metadata bilgileri görüntülenmiyor veya eksik.

**Çözüm**:

1. **FFmpeg'i Doğru Kurduğunuzdan Emin Olun**:
    - `ffprobe` komutunun doğru çalıştığından emin olun. FFmpeg doğru şekilde kurulu olmalıdır.

2. **Videonun Formatının Desteklendiğini Kontrol Edin**:
    - Uygulama sadece belirli video formatlarını destekler. Eğer farklı bir format kullanıyorsanız, metadata bilgisi alınamayabilir.

## 4. Dil Seçimi

**Sorun**: Dil Türkçe olarak ayarlanmadı.

**Çözüm**: 

1. **Sistemdeki Dil Ayarlarını Kontrol Edin**:
    - Eğer uygulama İngilizce olarak açılıyorsa, sistem dilinizin Türkçe olup olmadığını kontrol edin.

## 5. Diğer Sorunlar

Eğer başka bir sorunla karşılaşırsanız, lütfen GitHub'daki Issues sekmesinden bir issue açın ya da bir pull request gönderin.
