# İş Akışı 2: İleri Düzey Hata Ayıklama ve Kök Neden Analizi

Karmaşık, anlık tekrarlanamayan (heisenbug) veya eşzamanlılık (concurrency) hatalarını çözmek için izlenecek kurumsal iş akışıdır.

---

## 📌 Kullanılan Komutlar
- `/boost`: Problemi çoklu perspektiften analiz eder, olasılıkları sıralar.
- `/plan`: Teşhis ve doğrulama adımlarını yapılandırır.

---

## 🚀 Adım Adım Uygulama Akışı

### Adım 1: Hata İfadesini ve Logları İletin
```text
Kullanıcı: /boost Kullanıcılar ödeme yaparken ara sıra 'Deadlock detected' hatası alıyor.
@logs/api-error.log ve @src/services/payment.ts dosyalarını incele.
```

### Adım 2: Ajanın Kök Neden Hipotezleri
Ajan `/boost` moduyla şu aşamaları yürütür:
1. **Yarış Durumu (Race Condition) İncelemesi:** İşlem (transaction) izolasyon seviyelerini karşılaştırır.
2. **Kilit Sıralaması Denetimi:** Tablo kilitlerinin alınma sırasındaki tutarsızlıkları bulur.
3. **Karşıt Çözüm Analizi:** İyimser kilitleme (optimistic locking) ve kuyruklama (queuing) alternatiflerini tartıp en uygununu önerir.

### Adım 3: Düzeltme ve Test Koşumu
Ajan onayı aldıktan sonra kodu düzenler ve birim testlerle sorunun çözüldüğünü kanıtlar.
