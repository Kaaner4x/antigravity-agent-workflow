# Antigravity Eksiksiz Slash Komutları Kılavuzu

Bu belge, Antigravity ekosisteminde (Antigravity IDE, CLI `agy`, Antigravity 2.0 Desktop) kullanılabilen **tüm slash komutlarını** kategorilerine göre ayrıntılı biçimde açıklar.

---

## 1. İleri Düzey Ajan & İş Akışı Komutları

### 🎯 `/grill-me` (Etkileşimli Tasarım ve Mülakat)
- **Amaç:** Ajanın hemen aceleyle kod yazmasını engeller. Bir ürün yöneticisi ve yazılım mimarı gibi sizi mülakata alarak eksik gereksinimleri, tasarım tercihlerini ve uç durumları açığa çıkarır.
- **Ne Zaman:** Yeni bir mimari kurgularken, API sözleşmelerini belirlerken veya veritabanı şeması tasarlarken.
- **Örnek:**
  ```text
  /grill-me Redis ve WebSockets kullanarak gerçek zamanlı bir bildirim servisi kurmak istiyorum.
  ```

### 📋 `/plan` (Aşamalı Stratejik Planlama)
- **Amaç:** Görevi bağımsız, sıralı ve doğrulanabilir aşamalara böler. Her aşama tamamlandıkça onay kutusu işaretlenir.
- **Ne Zaman:** Çok adımlı hata ayıklama, refactoring ve kütüphane geçişlerinde.
- **Örnek:**
  ```text
  /plan Projedeki React 17 bileşenlerini React 18 Concurrent özelliklerine yükseltmek için aşamalı plan hazırla.
  ```

### 🏁 `/goal` (Kesintisiz Hedef Yürütme)
- **Amaç:** Her adımda kullanıcı onayı beklemeden, belirlenen nihai hedefe ulaşana kadar bağımsız bir döngüde çalışır.
- **Ne Zaman:** Gece sürecek test onarımları, toplu lint düzeltmeleri, kapsamlı migrasyonlar.
- **Örnek:**
  ```text
  /goal 'npm test' çıktısındaki tüm hataları analiz et, düzelt ve test suite başarıyla geçene kadar devam et.
  ```

### 🧠 `/boost` (Derin Akıl Yürütme ve Doğrulama)
- **Amaç:** Çok açılı analiz, stratejik planlama, karşıt argümanlar ve sıkı matematiksel/mantıksal doğrulama teknikleri kullanır.
- **Ne Zaman:** Dağıtık sistem kilitlenmeleri (deadlock), karmaşık algoritmalar ve güvenlik açıkları analizi.
- **Örnek:**
  ```text
  /boost Veritabanı bağlantı havuzundaki kilitlenme (deadlock) sorununu incele ve kanıtlanmış bir çözüm üret.
  ```

### 👥 `/teamwork` & `/swarm` (Çoklu Ajan İş Birliği)
- **Amaç:** Ortak bir mesaj panosu üzerinde birden fazla uzman alt ajanın (Frontend, Backend, QA vb.) paralel iş bölümüyle çalışmasını sağlar.
- **Ne Zaman:** Büyük ölçekli ve birden fazla yetkinlik gerektiren modüllerde.
- **Örnek:**
  ```text
  /teamwork REST API uç noktaları, unit testler ve dokümantasyonu paralel olarak tamamlayalım.
  ```

### 🌐 `/browser` (Canlı Tarayıcı Otomasyonu)
- **Amaç:** Canlı Chrome tarayıcısını Chrome DevTools üzerinden kontrol ederek form doldurma, buton tıklama ve sayfa doğrulama işlemlerini yapar.
- **Ne Zaman:** E2E testleri, UI render kontrolleri, karmaşık web akışları.
- **Örnek:**
  ```text
  /browser http://localhost:3000/register sayfasını aç, formu test verileriyle doldur ve sonucu doğrula.
  ```

### ⏰ `/schedule` & `/automation` (Zamanlanmış Görevler)
- **Amaç:** Arka planda cron formatında periyodik ya da belirli bir gecikmeyle tek seferlik çalışan ajan işleri tanımlar.
- **Ne Zaman:** Günlük PR özetleri, haftalık bağımlılık denetimleri, sağlık kontrolleri.
- **Örnek:**
  ```text
  /schedule 0 8 * * 1-5 Her sabah repodaki açık pull request'leri inceleyip özet çıkar.
  ```

### 🎓 `/learn` (Kalıcı Tercih Öğrenme)
- **Amaç:** Kullanıcının verdiği bir düzeltmeyi veya proje kuralını gelecekteki oturumlarda hatırlamak üzere kalıcı hafızaya yazar.
- **Örnek:**
  ```text
  /learn Bu repoda commit mesajları Conventional Commits standardında ve Türkçe yazılmalıdır.
  ```

---

## 2. Oturum, Model ve Bağlam Yönetimi

### 🗜 `/compact`
- Konuşma bağlamını (context) özetler ve token sınırına takılmadan ajanın odaklanmasını sağlar.

### 🧹 `/clear` veya `/reset`
- Mevcut konuşma geçmişini tamamen sıfırlar ve taze bir oturum başlatır.

### 🤖 `/model`
- Kullanılan yapay zeka modelini (Gemini Flash, Gemini Pro vb.) görüntüler veya oturum için modeli değiştirir.

### 📊 `/status`
- Ajanın mevcut durumunu, çalışan arka plan işlerini ve bellek kullanımını listeler.

### 💰 `/tokens` veya `/cost`
- Oturum boyunca kullanılan giriş (prompt) ve çıkış (completion) token sayılarını ve yaklaşık maliyetini gösterir.

### 🚪 `/exit` veya `/quit`
- Antigravity CLI oturumundan güvenli bir şekilde çıkar.

---

## 3. Özelleştirme ve Araç Komutları

### 🧩 `/plugin`
- Kurulu eklentileri (plugins) listeler, etkinleştirir, devre dışı bırakır veya yeni eklenti oluşturur.

### 🔌 `/mcp`
- Model Context Protocol sunucularını, araçlarını ve kaynak bağlantılarını denetler.

### 📜 `/rules`
- Proje kökündeki `.agents/rules/` dizininden yüklenen güncel kuralları gösterir.

### 🛠 `/skills`
- Ajanın kullanabildiği uzmanlık becerilerini (SKILL.md) listeler.

---

## 4. Kod İnceleme ve Güvenlik Komutları

### 🔍 `/review`
- Ajanın çalışma alanında yaptığı dosya değişikliklerini git diff formatında inceler.

### ↩️ `/undo`
- Ajanın son yaptığı dosya değişikliklerini geri alır.

### ❓ `/help`
- Arayüzde kullanılabilen tüm komutların listesini ve açıklamalarını ekrana getirir.
