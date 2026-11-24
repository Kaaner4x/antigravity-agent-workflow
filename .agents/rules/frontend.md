# Frontend Geliştirme Kuralları

Bu kurallar, Antigravity ajanının frontend bileşenleri ve kullanıcı arayüzü kodlarken uyması gereken kurumsal standartları belirler.

1. **Bileşen Mimarisi:**
   - Bileşenler tek sorumluluk prensibine (Single Responsibility) uygun olmalıdır.
   - Durum yönetimi (state management) yerel tutulmalı, sadece gerektiğinde üst katmana taşınmalıdır.
2. **Tip Güvenliği:**
   - Asla `any` tipi kullanılmamalı; prop ve event tipleri açıkça tanımlanmalıdır.
3. **Erişilebilirlik (a11y):**
   - Tüm buton, form ve interaktif elemanlarda `aria-label`, uygun semantik HTML etiketleri (`<button>`, `<nav>`, `<main>`) kullanılmalıdır.
4. **Stil ve Tema:**
   - Sabit renk ve piksel değerleri yerine CSS değişkenleri veya tema token'ları tercih edilmelidir.
