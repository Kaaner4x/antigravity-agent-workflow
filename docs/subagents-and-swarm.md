# Antigravity Alt Ajanlar (Subagents) ve Çoklu Ajan Mimarisi

Antigravity platformu, karmaşık görevleri tek bir devasa modele yüklemek yerine, işleri özelleşmiş alt ajanlara paylaştırarak çözer.

---

## 1. Dahili Alt Ajanlar

### `self` Ajanı
- **Görevi:** Ana ajanın sahip olduğu tüm araçlara (dosya düzenleme, terminal çalıştırma, planlama) sahip bağımsız bir alt konuşma başlatır.
- **Kullanım Yeri:** Ana sohbet bağlamını doldurmadan yan bir konuyu araştırmak veya bağımsız bir kod bloğu yazmak için kullanılır.

### `research` Ajanı
- **Görevi:** Salt okunur (read-only) dosya arama, kod tabanını tarama ve web aramaları yapma.
- **Özelliği:** Hiçbir dosyayı değiştiremez veya komut yürütemez. Kod tabanının geniş anketini çıkarırken güvenlik sağlar.

### `browser` Ajanı
- **Görevi:** Canlı bir Chrome tarayıcısını DevTools üzerinden kontrol eder.
- **Özelliği:**
  - Sayfa içi butonlara tıklama,
  - Giriş formlarını doldurma,
  - Ekran görüntüsü alma,
  - Ağ trafiğini ve konsol loglarını inceleme.

### `image-generator` Ajanı
- **Görevi:** Verilen promptlara uygun şematik çizimler, diyagramlar veya görseller üretir.

---

## 2. Çoklu Ajan İş Akışı (Swarm & Teamwork)

Çoklu ajan sisteminde her ajan ortak bir pano üzerinden iletişim kurar:
1. **Koordinatör (Coordinator):** Görevi ana parçalara ayırır ve alt ajanlara görev dağıtır.
2. **Çalışanlar (Workers):** Kendilerine atanan modülleri paralel olarak geliştirir.
3. **Monitör (Monitor):** Sürecin tıkanıp tıkanmadığını denetler ve aksayan noktaları raporlar.
