# Antigravity Slash Komutları Kılavuzu

Bu belge, Antigravity sohbet panelinde `/` önekiyle çağrılabilen tüm özel iş akışlarının ayrıntılı Türkçe açıklamalarını ve kullanım örneklerini içerir.

---

## 1. `/grill-me` (Etkileşimli Gereksinim Analizi)

### Ne İşe Yarar?
Ajanın hemen kod yazmaya başlamasını durdurur; bunun yerine bir baş mimar veya ürün yöneticisi gibi davranarak sizi detaylı sorularla sorgular.

### Ne Zaman Tercih Edilmelidir?
- Bir özelliğin mimarisini tasarlarken,
- Güvenlik, performans ve uç durumlar hakkında henüz kesin karar vermediğinizde,
- Ajanın yanlış varsayımlarla yüzlerce satır hatalı kod üretmesini önlemek istediğinizde.

### Örnek Senaryo
```text
Kullanıcı: /grill-me Kullanıcıların Google ve GitHub ile oturum açabileceği bir OAuth servisi yazmak istiyorum.
Ajan:
1. Kullanıcı daha önce Google ile kayıt olduysa ve sonra aynı e-posta ile GitHub ile girerse hesaplar birleştirilmeli mi?
2. Refresh token mekanizması veritabanında mı tutulacak yoksa Redis üzerinde mi?
3. Hangi JWT kütüphanesini ve imzalama algoritmasını (RS256 vs HS256) tercih ediyorsunuz?
```

---

## 2. `/goal` (Hedef Odaklı Kesintisiz Yürütme)

### Ne İşe Yarar?
Ajanın küçük bir adımda durup onay sorması yerine, belirlenen nihai hedefe ulaşana kadar bağımsız şekilde döngü halinde çalışmasını sağlar.

### Ne Zaman Tercih Edilmelidir?
- Gece boyunca veya siz bilgisayar başında değilken çalışacak uzun soluklu işlerde,
- Kapsamlı kod geçişlerinde (migration),
- Tüm test suite'inin yeşile dönene kadar otomatik onarılmasında.

### Örnek Senaryo
```text
/goal src/ klasöründeki tüm JavaScript dosyalarını TypeScript'e çevir, tipleri eksiksiz tanımla ve 'npm test' hatasız tamamlanana kadar devam et.
```

---

## 3. `/plan` (Aşamalı İş Planı)

### Ne İşe Yarar?
Karmaşık bir görevi doğrulanabilir, mantıksal alt adımlara böler ve bir onay kontrol listesi sunar.

### Ne Zaman Tercih Edilmelidir?
- Birden çok servisi veya dosyayı etkileyen değişikliklerde,
- Hangi sırayla işlem yapılacağını netleştirmek gerektiğinde.

---

## 4. `/boost` (Derin Düşünce ve İleri Düzey Doğrulama)

### Ne İşe Yarar?
Modelin çoklu bakış açısı, karşıt argümanlar ve sıkı matematiksel/mantıksal doğrulama teknikleri kullanarak karmaşık problemleri çözmesini sağlar.

### Ne Zaman Tercih Edilmelidir?
- Algoritmik problemler,
- Eşzamanlılık (concurrency) ve kilitlenme (deadlock) analizi,
- Yüksek güvenlik gerektiren kriptografik işlemler.

---

## 5. `/teamwork` & `/swarm` (Çoklu Ajan İş Birliği)

### Ne İşe Yarar?
Ortak bir mesaj panosu üzerinde birden fazla uzman ajanın paralel iş bölümüyle çalışmasını organize eder.

### Rol Dağılımı Örneği:
- **Ajan 1 (Backend):** API uç noktalarını geliştirir.
- **Ajan 2 (QA / Test):** Test senaryolarını yazar ve çalıştırır.
- **Ajan 3 (Dokümantasyon):** README ve API dokümanlarını günceller.

---

## 6. `/browser` (Tarayıcı Otomasyonu)

### Ne İşe Yarar?
Görsel Chrome DevTools alt ajanını ayağa kaldırır. Sayfa yükleme, buton tıklama, form doldurma ve DOM incelemesi yapabilir.

---

## 7. `/schedule` & `/automation` (Zamanlanmış Otomasyon)

### Ne İşe Yarar?
Cron formatında veya tek seferlik zamanlayıcılarla otomatik tetiklenen arka plan ajanları tanımlar.

---

## 8. `/compact` (Bağlam Optimizasyonu)

### Ne İşe Yarar?
Konuşma geçmişini kayıpsız özetleyerek gereksiz token yükünü temizler, ajanın hızını ve odaklanmasını artırır.

---

## 9. `/learn` (Kalıcı Kural Öğrenme)

### Ne İşe Yarar?
Projenize veya kişisel çalışma tarzınıza özel standartları ajan hafızasına kalıcı olarak yazar.
