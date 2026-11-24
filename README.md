# antigravity-agent-workflow

> Google Antigravity yapay zeka ajanını en yüksek verimle, doğru komutlar ve en iyi pratiklerle yönetmek için hazırlanmış kapsamlı Türkçe rehber ve iş akışı deposu.

**Geliştirici:** [Kaaner4x](https://github.com/Kaaner4x)  
**Lisans:** [MIT Lisansı](LICENSE)

---

## 📑 İçindekiler

1. [Proje Hakkında](#-proje-hakkında)
2. [Hızlı Başlangıç (Kurulum)](#-hızlı-başlangıç-kurulum)
3. [Antigravity Komutları (Slash Commands)](#-antigravity-komutları-slash-commands)
   - [/grill-me](#-grill-me-planı-derinlemesine-sorgulama)
   - [/goal](#-goal-kesintisiz-hedefe-ulaşma)
   - [/plan](#-plan-adım-adım-stratejik-planlama)
   - [/boost](#-boost-derin-düşünce-ve-doğrulama)
   - [/teamwork & /swarm](#-teamwork--swarm-çoklu-ajan-iş-birliği)
   - [/browser](#-browser-web-otomasyonu-ve-etkileşim)
   - [/schedule & /automation](#-schedule--automation-zamanlanmış-görevler)
   - [/compact](#-compact-bağlam-penceresini-hafifletme)
   - [/learn](#-learn-öğrenilen-davranışları-kalıcılaştırma)
   - [/plugin](#-plugin-eklenti-yönetimi)
4. [Alt Ajanlar (Subagents)](#-alt-ajanlar-subagents)
5. [Özelleştirmeler: Kurallar, Beceriler ve MCP](#-özelleştirmeler-kurallar-beceriler-ve-mcp)
6. [Güvenlik ve Terminal Sandbox Politikaları](#-güvenlik-ve-terminal-sandbox-politikaları)
7. [En İyi Kullanım Taktikleri (Best Practices)](#-en-iyi-kullanım-taktikleri-best-practices)

---

## 🚀 Proje Hakkında

**Antigravity**, Google DeepMind altyapısı üzerine inşa edilmiş, otonom kod yazma, hata ayıklama, web araştırması yapma, terminal komutlarını sandbox içinde yürütme ve çoklu alt ajanları koordine etme yeteneğine sahip yeni nesil bir yapay zeka geliştirme platformudur.

Bu depo, Antigravity ajanının tüm komutlarını (`/grill-me`, `/goal`, `/plan`, `/boost`, `/teamwork` vb.) nasıl, nerede ve hangi senaryoda kullanmanız gerektiğini Türkçe olarak adım adım açıklar.

---

## 🛠 Hızlı Başlangıç (Kurulum)

Projeyi klonladıktan sonra proje dizin yapısını ve varsayılan ajan kurallarını hazırlamak için başlatma betiğini çalıştırabilirsiniz:

### Windows (PowerShell):
```powershell
.\init.ps1
```

### Linux / macOS (Bash):
```bash
chmod +x init.sh
./init.sh
```

Bu işlem `.agents/rules/`, `.agents/skills/` ve gerekli çalışma alanlarını otomatik olarak hazırlar.

---

## ⚡ Antigravity Komutları (Slash Commands)

Sohbet arayüzünde `/` tuşuna basarak aşağıdaki özel iş akışlarını tetikleyebilirsiniz:

### 🎯 `/grill-me` (Planı Derinlemesine Sorgulama)
- **Amaç:** Bir projeye veya özelliğe başlamadan önce ajanın sizi kapsamlı bir soru-cevap sürecine tabi tutmasını sağlar.
- **Ne Zaman Kullanılır:** Tasarım kararları, uç durumlar (edge cases), mimari belirsizlikler veya eksik gereksinimler olduğunda.
- **Nasıl Çalışır:** Ajan varsayımlarda bulunmak yerine tek tek kritik sorular sorar; siz yanıtladıkça planı netleştirir.
- **Örnek Kullanım:**
  > `/grill-me Yeni bir JWT tabanlı kimlik doğrulama modülü eklemek istiyorum. Beni sorgula ve eksikleri bul.`

### 🏁 `/goal` (Kesintisiz Hedefe Ulaşma)
- **Amaç:** Uzun süreli, çok adımlı görevlerde ajanın durmaksızın hedefe kilitlenerek çalışmasını sağlar (örn. gece boyu sürecek görevler).
- **Ne Zaman Kullanılır:** Büyük kod tabanı geçişleri, geniş kapsamlı test yazımı, bağımlılık güncellemeleri veya tüm repoda refactoring yaparken.
- **Örnek Kullanım:**
  > `/goal Tüm test suite'ini çalıştır, başarısız testleri tespit et, düzelt ve sıfır hata alana kadar devam et.`

### 📋 `/plan` (Adım Adım Stratejik Planlama)
- **Amaç:** Kod yazmaya başlamadan önce yapılacak işleri mantıksal aşamalara bölerek doğrulanabilir bir kontrol listesi oluşturur.
- **Ne Zaman Kullanılır:** Karmaşık hata ayıklama, yeni servis entegrasyonu veya birden fazla dosyayı ilgilendiren değişikliklerde.
- **Örnek Kullanım:**
  > `/plan Veritabanı şemasını PostgreSQL 16'ya yükseltmek için aşamalı bir plan hazırla.`

### 🧠 `/boost` (Derin Düşünce ve Doğrulama)
- **Amaç:** Çok açılı analiz, stratejik düşünme ve sıkı doğrulama gerektiren karmaşık araştırma ve kodlama görevleri içindir.
- **Ne Zaman Kullanılır:** Algoritmik karmaşıklık optimizasyonu, güvenlik açıklarının analizi veya kritik mimari dönüşümler.
- **Örnek Kullanım:**
  > `/boost Önbellek mekanizmasındaki race condition sorununu incele ve kanıtlanmış bir çözüm geliştir.`

### 👥 `/teamwork` & `/swarm` (Çoklu Ajan İş Birliği)
- **Amaç:** Birden fazla otonom alt ajanın ortak bir mesaj panosu üzerinde paralel çalışmasını koordine eder.
- **Ne Zaman Kullanılır:** Bir ajanın kod yazarken, diğerinin testleri hazırlaması ve üçüncüsünün dokümantasyon oluşturması gereken büyük projelerde.
- **Örnek Kullanım:**
  > `/teamwork API dokümantasyonu, unit testler ve uç nokta kontrollerini paralel olarak tamamlayalım.`

### 🌐 `/browser` (Web Otomasyonu ve Etkileşim)
- **Amaç:** Canlı web sayfalarıyla etkileşime geçen, form dolduran, ekran görüntüleri alan ve DevTools kullanan tarayıcı alt ajanını devreye sokar.
- **Ne Zaman Kullanılır:** Web tabanlı uçtan uca (E2E) testler, web uygulaması önizlemeleri veya web üzerinden veri doğrulama.
- **Örnek Kullanım:**
  > `/browser Localhost 3000 portunda çalışan arayüzü aç ve giriş formunun çalıştığını doğrula.`

### ⏰ `/schedule` & `/automation` (Zamanlanmış Görevler)
- **Amaç:** Düzenli aralıklarla (cron) veya belirli bir gecikmeyle arka planda otomatik çalışacak işler tanımlar.
- **Ne Zaman Kullanılır:** Günlük rapor özetleri, periyodik bağımlılık denetimleri veya periyodik sistem sağlık kontrolleri.
- **Örnek Kullanım:**
  > `/schedule Her sabah saat 09:00'da repo üzerindeki açık PR'ları inceleyip özet çıkar.`

### 🗜 `/compact` (Bağlam Penceresini Hafifletme)
- **Amaç:** Uzun sohbetlerde bağlam penceresini özetleyerek gereksiz token tüketimini önler ve performansı tazeler.
- **Ne Zaman Kullanılır:** Onlarca adım sonrasında ajan yavaşladığında veya odak kayması başladığında.
- **Örnek Kullanım:**
  > `/compact Mevcut ilerlemeyi ve kalan görevleri özetleyerek sohbet bağlamını sadeleştir.`

### 🎓 `/learn` (Öğrenilen Davranışları Kalıcılaştırma)
- **Amaç:** Kullanıcının verdiği bir düzeltmeyi veya proje kuralını gelecekteki oturumlarda hatırlamak üzere kalıcı hale getirir.
- **Ne Zaman Kullanılır:** Özel bir yapılandırma çözüldüğünde veya ajanın projeye özel bir kuralı öğrenmesi gerektiğinde.
- **Örnek Kullanım:**
  > `/learn Projede her zaman camelCase yerine snake_case değişken isimlendirmesi kullandığımızı kaydet.`

### 🧩 `/plugin` (Eklenti Yönetimi)
- **Amaç:** Ajanın kullanabileceği eklentileri, becerileri (skills) ve MCP araçlarını yönetir veya yeni eklenti oluşturur.
- **Örnek Kullanım:**
  > `/plugin Aktif eklentileri listele ve GitHub eklentisini incele.`

---

## 🤖 Alt Ajanlar (Subagents)

Antigravity tek bir modelden ibaret değildir; işin niteliğine göre uzman alt ajanları görevlendirir:

| Alt Ajan | Rol ve Yetki Alanı |
|---|---|
| **`self`** | Ana ajanın tüm araç ve yetkilerini devralan izole alt konuşma yürütücüsü. |
| **`research`** | Salt okunur (read-only) dosya arama ve web araştırması yapan hafif alt ajan. |
| **`browser`** | Chrome DevTools üzerinden web sayfalarında gezinen, tıklama/form doldurma yapan arayüz uzmanı. |
| **`image-generator`** | Görsel promptlarından görseller üreten tasarım yardımcısı. |

---

## ⚙️ Özelleştirmeler: Kurallar, Beceriler ve MCP

Projenize özel davranışlar tanımlamak için deponun kök dizininde `.agents/` klasörü kullanılır:

```
antigravity-agent-workflow/
├── .agents/
│   ├── rules/          # Ajanın uyması gereken kod ve stil kuralları (.md)
│   ├── skills/         # Adım adım özel yetenek tanımları (SKILL.md)
│   └── scratch/        # Geçici hesaplama ve veri işleme betikleri
├── docs/               # Genişletilmiş Türkçe kullanım kılavuzları
├── init.ps1            # Windows başlatma betiği
├── init.sh             # Linux/macOS başlatma betiği
├── LICENSE             # MIT Lisansı (Kaaner4x)
└── README.md           # Ana başvuru dokümanı
```

- **Kurallar (`rules/*.md`):** Ajanın konuşma tonunu, yazacağı dil tercihlerini (örn. TypeScript strict mode) ve izin sınırlarını belirler.
- **Beceriler (`skills/*/SKILL.md`):** Ajanın belirli bir görevi (örn. veritabanı migrasyonu, PR hazırlığı) her seferinde standart protokolle yapmasını sağlar.
- **Model Context Protocol (MCP):** Harici servisleri (GitHub, Slack, Jira, Postgres, Figma) ajana doğrudan araç (tool) olarak bağlar.

---

## 🛡 Güvenlik ve Terminal Sandbox Politikaları

Antigravity, terminal komutlarını varsayılan olarak **Standard Sandbox Modunda** çalıştırır:
1. **İzole Dosya Alanı:** Ajan sadece izin verilen çalışma alanı içinde okuma/yazma yapar.
2. **Ağ Kısıtlamaları:** Sandbox dışına ağ erişimi gerektiren durumlarda kullanıcı onayı talep edilir.
3. **Zararlı Komut Koruması:** Sistem yapılandırmasını bozan veya yetkisiz erişim deneyen işlemler engellenir.

---

## 💡 En İyi Kullanım Taktikleri (Best Practices)

1. **Bağlamı `@` ile Besleyin:** Soru sorarken doğrudan dosya veya klasör adını etiketleyin (örn. `@src/auth.ts bu fonksiyondaki hatayı incele`).
2. **Önce Planlayın, Sonra Kodlatın:** Büyük işlerde doğrudan "kodu yaz" demek yerine `/plan` veya `/grill-me` kullanarak ilerleyin.
3. **Doğrulama Adımını Atlamayın:** Ajan kod değişikliği yaptıktan sonra mutlaka testleri çalıştırmasını isteyin.
4. **Uzun Süreli Görevlerde `/goal` Tercih Edin:** Kopukluk yaşamamak için hedefi tek bir oturumda net tarif edin.

---

## 📄 Lisans

Bu proje **[MIT Lisansı](LICENSE)** altında korunmaktadır.  
Geliştirici: **Kaaner4x** (2026)
