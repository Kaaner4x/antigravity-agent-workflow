# İş Akışı 3: Gece Otonom Çalışma (/goal) Rehberi

Geniş kapsamlı refactoring, test kapsamı artırma veya kütüphane yükseltme gibi saatler sürebilecek görevlerde ajanın kesintisiz yürütülmesidir.

---

## 📌 Temel Prensipler
- Hedef net ve ölçülebilir bir kriterle (`exit code 0`, `%90 test coverage`) tanımlanmalıdır.
- Terminal sandbox koruması aktif tutulmalıdır.

---

## 🚀 Örnek Senaryo: Kapsamlı TypeScript Dönüşümü

```text
Kullanıcı: /goal
Görev: src/ altındaki tüm legacy JS dosyalarını TypeScript (.ts / .tsx) formatına dönüştür.
Kriterler:
1. Kesinlikle 'any' kullanılmayacak, arayüzler ve tipler açıkça tanımlanacak.
2. 'npm run type-check' ve 'npm test' hatasız tamamlanacak.
3. Sıfır derleme ve test hatası elde edene kadar döngüye devam et.
```

### Ajanın Döngü Davranışı
1. Dosyaları teker teker `.ts` uzantısına çevirir.
2. Tip denetimi çalıştırır ve eksik interface tanımlarını tamamlar.
3. Testleri koşturur; kırılan testleri tespit edip mantığı onarır.
4. Hedef tam sağlandığında oturumu özet raporla tamamlar.
