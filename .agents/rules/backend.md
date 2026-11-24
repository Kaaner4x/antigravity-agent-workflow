# Backend Geliştirme Kuralları

Bu kurallar, Antigravity ajanının API, veritabanı ve servis katmanı kodlarken uyması gereken standartları tanımlar.

1. **Katmanlı Mimari:**
   - Controller, Service ve Repository katmanları kesin hatlarla ayrılmalıdır.
   - İş kuralları doğrudan Controller veya HTTP katmanına yazılmamalıdır.
2. **Girdi Doğrulama (Input Validation):**
   - Dış dünyadan gelen tüm HTTP istek gövdeleri (body) ve parametreleri (params) sıkı şema doğrulamasından geçirilmelidir.
3. **Hata Yönetimi ve Loglama:**
   - Hassas veriler (şifre, token, kart bilgisi) loglara yazılmamalıdır.
   - Hatalar standart bir JSON hata yanıtı (`status`, `code`, `message`) olarak dönmelidir.
4. **Veritabanı ve Performans:**
   - N+1 sorgu problemlerinden kaçınılmalı, indekslemeye dikkat edilmelidir.
