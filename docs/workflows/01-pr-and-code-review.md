# İş Akışı 1: PR ve Kod İnceleme Rehberi

Bu senaryoda Antigravity ajanının bir pull request (PR) veya yerel kod değişikliklerini nasıl bir kıdemli geliştirici gibi inceleyeceği anlatılır.

---

## 📌 Kullanılan Komutlar ve Araçlar
- `/review`: Dosya farklarını (diff) listeler ve analiz eder.
- `/boost`: Mimari uyumsuzlukları ve güvenlik açıklarını derinlemesine tarar.
- `@` etiketi: İlgili dosya veya PR diff'ini bağlama dahil eder.

---

## 🚀 Adım Adım Uygulama Akışı

### Adım 1: Değişiklikleri Bağlama Alın
```text
Kullanıcı: @git:diff Son commit'te yapılan değişiklikleri incele.
```

### Adım 2: Ajanın İnceleme Kontrol Listesi
Ajan `.agents/rules/kod-inceleme.md` kurallarını baz alarak şu noktaları kontrol eder:
1. **Güvenlik:** SQL injection, XSS veya açıkta kalan anahtar var mı?
2. **Performans:** N+1 sorgusu veya gereksiz bellek kullanımı bulunuyor mu?
3. **Standartlar:** Tip tanımları ve hata blokları kurala uygun mu?

### Adım 3: Örnek İnceleme Çıktısı
Ajan doğrudan satır numaralarıyla geri bildirim sunar:
- `src/services/auth.ts:42` -> Şifre hash'leme işlemi salt değeri olmadan çağrılmış, BCrypt kullanımını güncelleyin.
- `src/controllers/user.ts:18` -> Girdi doğrulaması eksik, `zod` veya `joi` şeması ekleyin.
