# Antigravity Eksiksiz Slash Komutları ve Beceriler Kılavuzu

Bu belge, Antigravity arayüzünde `/` tuşuna basıldığında açılan menüdeki **tüm komutların ve dahili becerilerin** ne işe yaradığını, orijinal açıklamalarını ve detaylı Türkçe kullanım rehberlerini içerir.

---

## 📋 Hızlı Başvuru Tablosu

| Komut | Orijinal Tanım | Kategori | Temel Amacı |
|---|---|---|---|
| **`/btw`** | *Ask a quick question without interrupting the main conversation.* | Sohbet / Yan Soru | Ana sohbet akışını, planını ve hafızasını bozmadan hızlı bir yan soru sormak. |
| **`/goal`** | *Run until the specified goal is completely finished.* | Otonom Yürütme | Kullanıcıdan adım başı onay beklemeden, belirlenen hedefe ulaşana kadar kesintisiz çalışmak. |
| **`/compact`** | *Compact the conversation now (summarize history to free up the context window).* | Bağlam Yönetimi | Konuşma geçmişini özetleyerek bağlam penceresini rahatlatmak ve token sınırını korumak. |
| **`/schedule`** | *Run an instruction on a recurring schedule or as a one-time timer.* | Zamanlama / Cron | Belirli aralıklarla (cron) veya zamanlayıcıyla arka planda görev çalıştırmak. |
| **`/browser`** | *Invoke a browser agent for web tasks.* | Tarayıcı Otomasyonu | Chrome DevTools üzerinden canlı web sayfalarıyla etkileşime geçmek, form doldurmak ve test etmek. |
| **`/plan`** | *Plan carefully before executing a task.* | Strateji & Planlama | Kod yazmadan önce görevi mantıksal, sıralı ve onaylanabilir adımlara bölmek. |
| **`/grill-me`** | *Interview me to align on a plan.* | Tasarım & Mülakat | Ajanın eksik gereksinimleri, tasarım tercihlerini ve uç durumları açığa çıkarmak için kullanıcıyı sorgulaması. |
| **`/teamwork`** | *Invoke a team of agents to autonomously tackle large projects.* | Çoklu Ajan | Büyük projeleri paralel alt ajanlara bölerek eşzamanlı geliştirmek. |
| **`/learn`** | *Reflect on recent successes or corrections to capture reusable skills or rules.* | Öğrenme & Kural | Yapılan bir düzeltmeyi veya başarıyı gelecekteki oturumlarda hatırlanacak bir kurala dönüştürmek. |
| **`/boost`** | *Invoke the Boost multi-agent orchestrator for complex tasks.* | Derin Akıl Yürütme | Çok açılı analiz, stratejik düşünme ve sıkı doğrulama gerektiren karmaşık sorunları çözmek. |
| **`/swarm`** | *(Preview & Quota Heavy) Run a swarm: several agents working in parallel on one task.* | Ajan Sürüsü | Ortak bir mesaj panosu üzerinde birden fazla ajanı gerçek zamanlı sürü olarak koordine etmek. |
| **`/automation`** | *Interactive guide to design and create a scheduled background automation.* | Otomasyon Rehberi | Arka planda periyodik veya tetikleyiciye bağlı çalışacak otomasyon işleri tasarlamak. |
| **`/generative_ui`** | *How to render rich interactive HTML widgets inline in the chat or as standalone artifacts.* | Zengin Arayüz | Sohbet içinde etkileşimli HTML/JS bileşenleri, grafikler ve simülasyonlar üretmek. |
| **`/mcp-app-development`** | *Build, package, and debug MCP Apps for Antigravity.* | MCP Uygulama | Sonuçları yan panelde veya sohbette zengin arayüz olarak açılan MCP uygulamaları geliştirmek. |
| **`/migrate-agent-settings`** | *Migrates the user's MCP servers, skills, slash commands, subagents, and instruction files.* | Göç & İçe Aktarma | Claude Code, Cursor, Codex veya Gemini CLI ayarlarını tek bir Antigravity eklentisine taşımak. |
| **`/migrate-workflows`** | *Automatically migrate legacy workflows to modern skills across global and workspace configurations.* | İş Akışı Göçü | Eski tip iş akışı dosyalarını modern `SKILL.md` beceri formatına dönüştürmek. |
| **`/plugin`** | *How to manage and create plugins — namespaced bundles of skills, agents, rules, MCP servers and hooks.* | Eklenti Yönetimi | Becerileri, kuralları ve MCP sunucularını içeren eklentileri yönetmek veya yenisini oluşturmak. |
| **`/run-workflow`** | *How to write and run a dynamic workflow script with the run_workflow tool.* | Dinamik İş Akışı | Python tabanlı paralel, aşamalı ajan iş akışları yazmak ve yürütmek. |
| **`/agy-customizations`** | *Comprehensive guide and reference for the Antigravity Customization System.* | Özelleştirme Kılavuzu | Skills, rules, plugins, hooks ve MCP sunucularının keşif ve yükleme önceliklerini öğrenmek. |
| **`/antigravity-guide`** | *Provides a comprehensive guide, quick reference, and sitemap for Google Antigravity (AGY).* | Ana Başvuru Kılavuzu | Antigravity CLI, IDE ve Desktop platformlarının tüm yetenek ve sitemap belgelerine erişmek. |

---

## 🔍 Detaylı Komut Rehberi ve Örnekler

### 1. `/btw` (By The Way - Yan Soru)
- **Ne İşe Yarar:** Mevcut ana sohbetin bağlamını, planını veya çalışan işlemlerini kesintiye uğratmadan hızlı bir yan soru sormanızı sağlar.
- **Ne Zaman Kullanılır:** Ajan uzun bir refactoring üzerinde çalışırken veya bir plan yürütürken aklınıza gelen küçük bir sözdizimi, kütüphane veya konsept sorusunda.
- **Örnek:**
  ```text
  /btw Node.js 20 ile 'node --watch' bayrağı tam olarak nodemon'un yerini alıyor mu?
  ```

---

### 2. `/goal` (Kesintisiz Hedef Yürütücü)
- **Ne İşe Yarar:** Belirlenen kriterler tam olarak sağlanana kadar ajanın bağımsız döngüde çalışmasını sağlar. Her adımda "devam edeyim mi?" diye sormaz.
- **Ne Zaman Kullanılır:** Gece boyu çalışacak işlerde, yüzlerce dosyalık kütüphane geçişlerinde veya tüm testlerin yeşile dönmesi gereken durumlarda.
- **Örnek:**
  ```text
  /goal 'npm test' çıktısındaki tüm hataları analiz et, dosyaları düzenle ve 0 hata ile tüm testler geçene kadar devam et.
  ```

---

### 3. `/compact` (Bağlam Penceresi Temizleme)
- **Ne İşe Yarar:** Uzun süren konuşmalarda sohbet geçmişini önemli noktaları koruyarak özetler ve token yükünü sıfırlayarak ajana hız kazandırır.
- **Ne Zaman Kullanılır:** 25-30 adımdan sonra ajanın yanıtları yavaşladığında veya eski bağlamları karıştırmaya başladığında.
- **Örnek:**
  ```text
  /compact
  ```

---

### 4. `/schedule` (Zamanlanmış Arka Plan Görevleri)
- **Ne İşe Yarar:** Arka planda cron formatında periyodik veya tek seferlik gecikmeli ajan işleri kurar.
- **Ne Zaman Kullanılır:** Günlük raporlar, haftalık bağımlılık denetimleri veya periyodik test koşumları.
- **Örnek:**
  ```text
  /schedule 0 9 * * 1-5 Açık pull request'leri incele ve özet çıkar.
  ```

---

### 5. `/browser` (Canlı Web Tarayıcı Otomasyonu)
- **Ne İşe Yarar:** Chrome DevTools alt ajanını ayağa kaldırarak web sayfalarında tıklama, form doldurma, ekran görüntüsü alma ve DOM incelemesi yapar.
- **Ne Zaman Kullanılır:** Arayüzün görsel doğrulaması, E2E kullanıcı akış testleri ve dinamik JavaScript sayfalarının incelenmesi.
- **Örnek:**
  ```text
  /browser http://localhost:5173 adresindeki web sitesini aç, kayıt ol formunu doldur ve panele yönlendirildiğini doğrula.
  ```

---

### 6. `/plan` (Aşamalı Stratejik Planlama)
- **Ne İşe Yarar:** Kodlamaya başlamadan önce görevi aşamalı, doğrulanabilir bir kontrol listesine dönüştürür.
- **Ne Zaman Kullanılır:** Karmaşık ve birden fazla dosyayı ilgilendiren özellik geliştirmelerinde.
- **Örnek:**
  ```text
  /plan Veritabanı şemasını PostgreSQL 16'ya yükseltmek için aşamalı bir plan hazırla.
  ```

---

### 7. `/grill-me` (Tasarımı Derinlemesine Sorgulama)
- **Ne İşe Yarar:** Ajan hemen kod yazmak yerine bir baş mimar gibi sizi soru yağmuruna tutarak eksik gereksinimleri, güvenlik açıklarını ve uç durumları ortaya çıkarır.
- **Ne Zaman Kullanılır:** Tasarım kararları netleşmediğinde, yanlış kod yazımını baştan engellemek için.
- **Örnek:**
  ```text
  /grill-me Çok kullanıcılı bir dosya yükleme ve izin yönetim sistemi yazacağız. Beni en ince ayrıntısına kadar sorgula.
  ```

---

### 8. `/teamwork` & `/swarm` (Çoklu Ajan Koordinasyonu)
- **Ne İşe Yarar:** Birden fazla uzman alt ajanın (Frontend, Backend, QA vb.) ortak bir mesaj panosu üzerinde paralel çalışmasını sağlar.
- **Ne Zaman Kullanılır:** Büyük özellik paketleri veya birden fazla katmanı aynı anda kodlarken.
- **Örnek:**
  ```text
  /teamwork REST API uç noktaları, React bileşenleri ve birim testleri paralel olarak geliştirin.
  ```

---

### 9. `/learn` (Kalıcı Tercih Öğrenme)
- **Ne İşe Yarar:** Kullanıcının verdiği bir düzeltmeyi veya proje kuralını gelecekteki oturumlarda hatırlanacak bir kurala dönüştürür.
- **Örnek:**
  ```text
  /learn Bu repoda commit mesajları her zaman Conventional Commits formatında ve Türkçe yazılmalıdır.
  ```

---

### 10. `/boost` (Derin Akıl Yürütme ve Doğrulama)
- **Ne İşe Yarar:** Çok açılı analiz, stratejik düşünme ve sıkı doğrulama teknikleri kullanarak karmaşık problemleri çözer.
- **Ne Zaman Kullanılır:** Deadlock analizi, bellek sızıntıları ve algoritmik darboğazlar.
- **Örnek:**
  ```text
  /boost Dağıtık kuyruk sistemindeki race condition hatasını derinlemesine analiz et ve kanıtlanmış bir çözüm öner.
  ```

---

### 11. `/automation` (Otomasyon Tasarım Rehberi)
- **Ne İşe Yarar:** Etkileşimli bir diyalogla arka plan otomasyonları (cron, timer) tasarlamanıza ve yapılandırmanıza yardımcı olur.

---

### 12. `/generative_ui` (Zengin Arayüz Üretimi)
- **Ne İşe Yarar:** Sohbet içinde veya bağımsız yapay zeka çıktılarında (artifacts) etkileşimli HTML, CSS, SVG veya JS tabanlı zengin widget'lar üretilmesini sağlar.

---

### 13. `/mcp-app-development` (MCP Uygulama Geliştirme)
- **Ne İşe Yarar:** Model Context Protocol araçlarının sonuçlarını Antigravity yan panelinde veya tam sayfa olarak zengin bir arayüzle göstermek için rehberlik sağlar.

---

### 14. `/migrate-agent-settings` (Ajan Ayarlarını İçe Aktarma)
- **Ne İşe Yarar:** Claude Code, Cursor, Codex veya Gemini CLI üzerindeki MCP sunucularını, becerilerini ve kurallarını Antigravity eklentisi formatına dönüştürür.

---

### 15. `/migrate-workflows` (Eski İş Akışlarını Dönüştürme)
- **Ne İşe Yarar:** Eski yapıdaki workflow dosyalarını modern `SKILL.md` mimarisine taşır.

---

### 16. `/plugin` (Eklenti Yönetimi)
- **Ne İşe Yarar:** Kurulu eklentileri inceler, Marketplace üzerinden yenilerini keşfeder ve kurar.

---

### 17. `/run-workflow` (Python Tabanlı Dinamik İş Akışları)
- **Ne İşe Yarar:** `agent`, `parallel`, `pipeline` ve `phase` gibi Python kodlarıyla onlarca ajanı orkestre eden dinamik iş akışları çalıştırır.

---

### 18. `/agy-customizations` & `/antigravity-guide` (Resmi Antigravity Kılavuzları)
- **Ne İşe Yarar:** Antigravity CLI, IDE ve Desktop platformunun tüm yeteneklerini, yapılandırma dosyalarını (`settings.json`) ve dokümantasyon haritasını listeler.
