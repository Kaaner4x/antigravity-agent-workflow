# İş Akışı 4: Canlı Tarayıcı E2E Testi (/browser)

Uygulamanın kullanıcı arayüzünü (UI) Chrome DevTools alt ajanıyla gerçek bir tarayıcıda doğrulama sürecidir.

---

## 📌 Kullanılan Araç
- `browser` Alt Ajanı: Sayfa yükleme, form doldurma, tıklama, console hatalarını okuma.

---

## 🚀 Adım Adım Uygulama Akışı

### Adım 1: Yerel Sunucuyu Başlatın ve Ajanı Yönlendirin
```text
Kullanıcı: /browser http://localhost:5173 adresindeki web uygulamasını aç.
Yeni bir kullanıcı kaydı oluştur, profili güncelle ve avatar yükleme alanının çalıştığını teyit et.
```

### Adım 2: Ajanın Tarayıcı Eylemleri
1. Sayfayı açar ve DOM ağacını inceler.
2. `input[name="email"]` ve `input[name="password"]` alanlarını test verisiyle doldurur.
3. Kayıt butonuna tıklar, sayfa yönlendirmesini bekler.
4. Ağ (Network) sekmesindeki HTTP 200 yanıtını ve sayfa üzerindeki başarı bildirimini ekran görüntüsüyle doğrular.
