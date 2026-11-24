# İş Akışı 5: Çoklu Ajan Sürüsü (/swarm & /teamwork)

Geniş çaplı bir özelliği aynı anda geliştirmek üzere birden fazla ajanın paralel iş bölümüyle çalıştırılmasıdır.

---

## 📌 Ajan Rol Dağılımı

1. **Koordinatör (Coordinator):** Görevi yönetir, genel mimariyi kontrol eder.
2. **Backend Uzmanı:** Veritabanı modellerini ve REST uç noktalarını yazar.
3. **Frontend Uzmanı:** React/Vue bileşenlerini geliştirir ve servisle bağlar.
4. **Test & QA Uzmanı:** Jest/Cypress test senaryolarını hazırlar.

---

## 🚀 Başlatma Komutu
```text
Kullanıcı: /teamwork Kullanıcı profil yönetimi ve avatar yükleme özelliğini uçtan uca geliştirelim.
- Ajan 1: Express + Multer ile dosya yükleme API'sini yazsın.
- Ajan 2: React avatar yükleme ve kırpma (crop) bileşenini kodlasın.
- Ajan 3: API için integration testlerini hazırlasın.
```

Tüm alt ajanlar ortak bir panoda mesajlaşarak API sözleşmesinde anlaşır ve bağımsız dallarda (branches) geliştirme yapar.
