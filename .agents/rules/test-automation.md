# Test ve Kalite Güvencesi Kuralları

Bu kurallar, yazılan kodların otomatik testlerle doğrulanmasını garanti altına alır.

1. **Birim Test Kapsamı:**
   - Kritik iş mantığı içeren fonksiyonlar için en az %80 test kapsamı (coverage) hedeflenmelidir.
   - Test senaryoları hem mutlu yolu (happy path) hem de uç/hata durumlarını (edge cases) kapsamalıdır.
2. **Mocking ve İzolasyon:**
   - Birim testlerde harici ağ veya veritabanı çağrıları mock'lanmalıdır.
3. **Test Koşumu:**
   - Kod değişiklikleri sonrasında ajan mutlaka test komutunu çalıştırmalı ve testlerin başarıyla geçtiğini teyit etmelidir.
