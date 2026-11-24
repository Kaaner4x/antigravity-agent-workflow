# antigravity-agent-workflow

> Google Antigravity yapay zeka ajanını en yüksek verimle, doğru komutlar ve en iyi pratiklerle yönetmek için hazırlanmış kapsamlı Türkçe rehber ve iş akışı deposu.

**Geliştirici:** [Kaaner4x](https://github.com/Kaaner4x)  
**Lisans:** [MIT Lisansı](LICENSE)

---

## 📑 İçindekiler

1. [Proje Hakkında](#-proje-hakkında)
2. [Hızlı Başlangıç (Kurulum)](#-hızlı-başlangıç-kurulum)
3. [Eksiksiz Slash Komutları Matrisi](#-eksiksiz-slash-komutları-matrisi)
4. [Tüm Komutların Detaylı Kullanımı](#-tüm-komutların-detaylı-kullanımı)
   - [Ajan & İleri İş Akışı Komutları](#1-ajan--i̇leri-i̇ş-akışı-komutları)
   - [Oturum, Model ve Bağlam Yönetimi](#2-oturum-model-ve-bağlam-yönetimi)
   - [Özelleştirme, Eklenti ve Araç Komutları](#3-özelleştirme-eklenti-ve-araç-komutları)
   - [Kod İnceleme, Geçmiş ve Yardım](#4-kod-i̇nceleme-geçmiş-ve-yardım)
5. [Alt Ajanlar (Subagents)](#-alt-ajanlar-subagents)
6. [Özelleştirmeler: Kurallar, Beceriler ve MCP](#-özelleştirmeler-kurallar-beceriler-ve-mcp)
7. [Güvenlik ve Terminal Sandbox Politikaları](#-güvenlik-ve-terminal-sandbox-politikaları)
8. [En İyi Kullanım Taktikleri (Best Practices)](#-en-iyi-kullanım-taktikleri-best-practices)

---

## 🚀 Proje Hakkında

**Antigravity**, Google DeepMind altyapısı üzerine inşa edilmiş, otonom kod yazma, hata ayıklama, web araştırması yapma, terminal komutlarını sandbox içinde yürütme ve çoklu alt ajanları koordine etme yeteneğine sahip yeni nesil bir yapay zeka geliştirme platformudur (IDE, CLI `agy` ve Desktop App yüzeylerinde çalışır).

Bu repo, Antigravity ekosisteminde bulunan **tüm slash komutlarını**, ne işe yaradıklarını, ne zaman kullanılmaları gerektiğini ve en doğru prompt şablonlarını Türkçe olarak sunar.

---

## 🛠 Hızlı Başlangıç (Kurulum)

Depoyu yerelinizde klonladıktan sonra proje dizin yapısını ve standart kuralları tek tıkla kurabilirsiniz:

### Windows (PowerShell):
```powershell
.\init.ps1
```

### Linux / macOS (Bash):
```bash
chmod +x init.sh && ./init.sh
```

---

## 📊 Eksiksiz Slash Komutları Matrisi

| Komut | Kategori | Temel İşlevi |
|---|---|---|
| **`/grill-me`** | Planlama / Mimari | Varsayımları sorgulamak için kullanıcıyı mülakata alır. |
| **`/plan`** | Planlama / Strateji | Görevi aşamalı ve doğrulanabilir kontrol listesine böler. |
| **`/goal`** | Otonom Yürütme | Kesintisiz döngüde hedefe ulaşana kadar durmaksızın çalışır. |
| **`/boost`** | Derin Düşünce | Çok açılı analiz, stratejik düşünme ve sıkı doğrulama uygular. |
| **`/teamwork`** | Çoklu Ajan | Ekipler halinde paralel çalışan alt ajanları koordine eder. |
| **`/swarm`** | Çoklu Ajan | Ortak mesaj panosu üzerinden çalışan ajan sürüsünü yönetir. |
| **`/browser`** | Web & Arayüz | Chrome DevTools ile canlı web sayfalarında etkileşim kurar. |
| **`/schedule`** | Otomasyon | Zamanlanmış (cron) veya gecikmeli arka plan görevleri kurar. |
| **`/automation`** | Otomasyon | Etkileşimli arka plan otomasyon sihirbazını başlatır. |
| **`/learn`** | Hafıza & Kural | Verilen düzeltmeleri veya tercihleri kalıcı kurala dönüştürür. |
| **`/compact`** | Bağlam Yönetimi | Sohbet geçmişini özetleyerek bağlam penceresini rahatlatır. |
| **`/clear` / `/reset`** | Oturum Yönetimi | Sohbet geçmişini sıfırlar ve temiz bir oturum açar. |
| **`/model`** | Model Yönetimi | Aktif Gemini modelini (Flash, Pro vb.) gösterir veya değiştirir. |
| **`/status`** | Sistem Teşhisi | Ajanın anlık durumunu, arka plan işlerini ve token yükünü gösterir. |
| **`/tokens` / `/cost`** | Metrikler | Mevcut oturumun token tüketimini ve maliyetini raporlar. |
| **`/plugin`** | Eklenti Yönetimi | Eklentileri, MCP sunucularını ve becerileri yönetir. |
| **`/mcp`** | Entegrasyon | Model Context Protocol sunucularını ve araçlarını listeler. |
| **`/rules`** | Kural Yönetimi | Aktif olan sistem ve repo kurallarını listeler. |
| **`/skills`** | Beceri Yönetimi | Yüklü olan iş akışı becerilerini (SKILL.md) listeler. |
| **`/review`** | Kod Denetimi | Yapılan dosya değişikliklerini gözden geçirip diff sunar. |
| **`/undo`** | Geri Alma | Ajanın yaptığı son dosya değişikliklerini geri alır. |
| **`/help`** | Yardım | Kullanılabilir tüm slash komutlarını ve seçenekleri listeler. |

---

## 🔍 Tüm Komutların Detaylı Kullanımı

### 1. Ajan & İleri İş Akışı Komutları

#### 🎯 `/grill-me` (Tasarımı Sorgulama & Soru-Cevap Mülakatı)
- **Ne Yapar:** Ajan bir ürün yöneticisi / baş mimar rolüne bürünerek eksik gereksinimleri, güvenlik risklerini ve sınır durumları (edge cases) ortaya çıkarmak için size sorular sorar.
- **Kullanım Zamanı:** Tasarım netleşmediğinde, yanlış kod yazımını baştan engellemek için.
- **Örnek:** `/grill-me Çok kullanıcılı bir dosya yükleme sistemi yazacağız. Beni en ince ayrıntısına kadar sorgula.`

#### 📋 `/plan` (Adım Adım Yol Haritası)
- **Ne Yapar:** Karmaşık bir işi kodlamaya geçmeden önce mantıksal aşamalara ayırır ve onaylanabilir bir kontrol listesi oluşturur.
- **Kullanım Zamanı:** 3 veya daha fazla dosyayı etkileyen refactoring veya özellik geliştirmelerinde.
- **Örnek:** `/plan Mevcut monolithic yapıyı mikroservis mimarisine bölmek için adım adım plan hazırla.`

#### 🏁 `/goal` (Kesintisiz Hedef Yürütücü)
- **Ne Yapar:** Her adımda kullanıcı onayı beklemeden, belirlenen nihai hedefe ulaşana kadar bağımsız bir döngüde çalışır.
- **Kullanım Zamanı:** Gece boyu sürecek geniş test onarımları, toplu lint düzeltmeleri ve kütüphane yükseltmeleri.
- **Örnek:** `/goal Bütün birim testlerini koştur, hata veren her modülü düzelt ve tüm testler geçene kadar devam et.`

#### 🧠 `/boost` (Derin Akıl Yürütme ve Doğrulama)
- **Ne Yapar:** Probleme birden fazla bakış açısıyla yaklaşır, karşıt argümanları tartar ve doğrulanmış çözümler üretir.
- **Kullanım Zamanı:** Eşzamanlılık (concurrency) sorunları, bellek sızıntıları, karmaşık algoritmalar.
- **Örnek:** `/boost Dağıtık kuyruk sistemindeki race condition hatasını derinlemesine analiz et ve kalıcı çözüm öner.`

#### 👥 `/teamwork` & `/swarm` (Çoklu Ajan Koordinasyonu)
- **Ne Yapar:** Ortak mesaj panosu üzerinde birden fazla uzman alt ajanı (örn. Araştırmacı, Geliştirici, Test Uzmanı) eşzamanlı çalıştırır.
- **Kullanım Zamanı:** Büyük özellik paketleri veya birden fazla katmanı aynı anda kodlarken.
- **Örnek:** `/teamwork Frontend arayüzü ve backend uç noktalarını paralel olarak geliştirip bağlayın.`

#### 🌐 `/browser` (Canlı Tarayıcı ve DevTools)
- **Ne Yapar:** Canlı Chrome tarayıcısında form doldurur, buton tıklar, ekran görüntüsü alır ve sayfa hatalarını inceler.
- **Kullanım Zamanı:** E2E testleri, web kazıma doğrulama, kullanıcı akış testleri.
- **Örnek:** `/browser http://localhost:5173 adresini aç ve ödeme formunu test et.`

#### ⏰ `/schedule` & `/automation` (Zamanlanmış Arka Plan İşleri)
- **Ne Yapar:** Cron ifadesi veya zamanlayıcı ile arka planda periyodik ajan komutları çalıştırır.
- **Kullanım Zamanı:** Günlük kod raporları, periyodik PR denetimleri, sağlık kontrolleri.
- **Örnek:** `/schedule 0 9 * * 1-5 Açık PR'ları incele ve özet rapor hazırla.`

#### 🎓 `/learn` (Kalıcı Tercih Kaydı)
- **Ne Yapar:** Ajanın yaptığı bir hatayı düzelttiğinizde bu bilgiyi kalıcı bellek kurallarına ekler.
- **Örnek:** `/learn Bu repoda commit mesajları her zaman Conventional Commits formatında Türkçe yazılmalıdır.`

---

### 2. Oturum, Model ve Bağlam Yönetimi

- **`/compact`:** Konuşma uzadığında geçmişi özetleyerek bağlam penceresini temizler ve ajanın dikkatini tazeler.
- **`/clear` / `/reset`:** Sohbet oturumunu tamamen sıfırlar, temiz bir başlangıç yapar.
- **`/model`:** Kullanılan Gemini modelini görüntüler veya farklı bir modele (Gemini Flash, Pro vb.) geçiş yapar.
- **`/status`:** Aktif alt ajanları, arka plan görevlerini ve bellek kullanım durumunu listeler.
- **`/tokens` / `/cost`:** Oturum boyunca harcanan giriş/çıkış token miktarını ve yaklaşık maliyetini gösterir.
- **`/exit` / `/quit`:** CLI oturumunu sonlandırır.

---

### 3. Özelleştirme, Eklenti ve Araç Komutları

- **`/plugin`:** Kurulu eklentileri inceler, pazar yerinden (Marketplace) yeni eklenti keşfeder veya yeni eklenti tasarlar.
- **`/mcp`:** Model Context Protocol bağlantılarını (PostgreSQL, GitHub, Slack vb.) kontrol eder.
- **`/rules`:** `.agents/rules/` dizininden yüklenen güncel kuralları gösterir.
- **`/skills`:** Yüklü özel iş akışı becerilerini listeler.

---

### 4. Kod İnceleme, Geçmiş ve Yardım

- **`/review`:** Ajanın son yaptığı değişiklikleri git diff formatında inceler ve onayınıza sunar.
- **`/undo`:** Son yapılan dosya düzenlemelerini güvenle geri alır.
- **`/help`:** Desteklenen tüm komutların yardım metinlerini ekrana basar.

---

## 🤖 Alt Ajanlar (Subagents)

| Alt Ajan | Yetkisi | Açıklama |
|---|---|---|
| **`self`** | Tam Yetki | Ana ajanın kopyası olarak izole alt görevleri tamamlar. |
| **`research`** | Salt Okunur | Dosya arama ve web araştırmasını güvenli şekilde yapar. |
| **`browser`** | Tarayıcı | Web arayüzlerini DevTools üzerinden otomatize eder. |
| **`image-generator`** | Görsel | Şema, grafik ve görsel içerikler üretir. |

---

## 🛡 Güvenlik ve Terminal Sandbox Politikaları

Antigravity, terminal komutlarını varsayılan olarak **Standard Sandbox Modunda** çalıştırır:
1. **İzole Dosya Alanı:** Ajan sadece izin verilen çalışma alanı içinde okuma/yazma yapar.
2. **Ağ Kısıtlamaları:** Sandbox dışına ağ erişimi gerektiren durumlarda kullanıcı onayı talep edilir.
3. **Zararlı Komut Koruması:** Sistem yapılandırmasını bozan veya yetkisiz erişim deneyen işlemler engellenir.

---

## 💡 En İyi Kullanım Taktikleri (Best Practices)

1. **Bağlamı `@` ile Besleyin:** `@dosya-yolu` formatıyla hedef dosyaları mesaja doğrudan iliştirin.
2. **Büyük İşlerde `/plan` veya `/grill-me`:** Kodlamaya geçmeden önce stratejiyi sabitleyin.
3. **Uzun Süreli Görevlerde `/goal`:** Gece veya arka planda çalışacak işlerde hedefe kilitlenin.
4. **Şişen Bağlamlarda `/compact`:** Token sınırına yaklaşmadan bağlamı hafifletin.

---

## 📄 Lisans

Bu proje **[MIT Lisansı](LICENSE)** altında korunmaktadır.  
Geliştirici: **Kaaner4x** (2026)
