# Güvenlik ve Uyumluluk Kuralları

Bu kurallar, Antigravity ajanının kod üretirken güvenlik açıklarını engellemesini zorunlu kılar.

1. **Kimlik Doğrulama ve Yetkilendirme:**
   - Uç noktalarda rol tabanlı erişim kontrolü (RBAC) zorunludur.
   - Token saklama işlemlerinde HTTP-only ve Secure cookie bayrakları kullanılmalıdır.
2. **Enjeksiyon Koruması:**
   - SQL, NoSQL ve OS komut enjeksiyonlarına karşı daima parametreli sorgular ve güvenli ORM fonksiyonları kullanılmalıdır.
3. **Gizli Bilgi (Secret) Yönetimi:**
   - Kod içine API anahtarı, gizli anahtar (secret key) veya şifre yazılması kesinlikle yasaktır.
   - Tüm hassas değişkenler `.env` üzerinden okunmalı, `.env.example` şablonu güncellenmelidir.
4. **Terminal Sandbox Uyumu:**
   - Ajan asla sandbox dışına kaçacak komutlar çalıştırmamalı; sistem dosyalarına müdahale etmemelidir.
