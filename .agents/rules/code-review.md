# Kod İnceleme ve Git İş Akışı Kuralları

Bu kurallar, Antigravity ajanının kod inceleme (code review) yaparken ve commit üretirken izleyeceği protokolü belirler.

1. **Commit Mesajı Standardı:**
   - Commit mesajları Conventional Commits formatında, emojili ve Türkçe açıklamalı olmalıdır (`feat:`, `fix:`, `docs:`, `refactor:`, `test:`).
2. **Küçük ve Odaklı Değişiklikler:**
   - Birbiriyle ilgisiz dosya düzenlemeleri tek bir adımda yapılmamalı; atomik adımlarla ilerlenmelidir.
3. **Diff İnceleme Sorumluluğu:**
   - Değişiklikler uygulanmadan önce `/review` mekanizması işletilmeli, gereksiz boşluk ve biçimlendirme değişiklikleri ayıklanmalıdır.
