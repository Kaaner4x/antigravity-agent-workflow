# ==============================================================================
# antigravity-agent-workflow - Proje Başlatma Betiği (PowerShell)
# Geliştirici: Kaaner4x
# Lisans: MIT
# ==============================================================================

Write-Host ">>> Antigravity Agent Workflow Kurulumu Başlatılıyor..." -ForegroundColor Cyan

# Gerekli Antigravity Dizin Yapısını Oluştur
$folders = @(
    ".agents",
    ".agents/rules",
    ".agents/skills",
    ".agents/scratch",
    "docs",
    "scripts"
)

foreach ($folder in $folders) {
    if (-not (Test-Path -Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
        Write-Host " [+] Dizin oluşturuldu: $folder" -ForegroundColor Green
    } else {
        Write-Host " [i] Dizin zaten mevcut: $folder" -ForegroundColor Yellow
    }
}

# Örnek Ajan Kural Dosyası Oluştur
$ruleFile = ".agents/rules/genel-kurallar.md"
if (-not (Test-Path -Path $ruleFile)) {
    $ruleContent = @"
# Proje Ajan Kuralları (Antigravity Rules)

Bu kurallar Antigravity ajanının bu depoda çalışırken izlemesi gereken standartları belirler:

1. **Dil Standardı**: Tüm yanıtlar, açıklamalar ve dokümantasyon Türkçe olmalıdır.
2. **Kodlama Kalitesi**: Yazılan kodlar temiz, modüler ve belgelenmiş olmalıdır.
3. **Güvenlik**: Yetkisiz dosya erişimleri yapılmamalı, sandbox sınırlarına saygı gösterilmelidir.
4. **Onay Mekanizması**: Kritik değişiklikler öncesinde `/plan` veya `/grill-me` gibi süreçler işletilmelidir.
"@
    Set-Content -Path $ruleFile -Value $ruleContent -Encoding UTF8
    Write-Host " [+] Örnek kural dosyası oluşturuldu: $ruleFile" -ForegroundColor Green
}

Write-Host "`n>>> Kurulum başarıyla tamamlandı!" -ForegroundColor Green
Write-Host ">>> Antigravity ajanını kullanmaya başlamak için README.md dosyasını inceleyebilirsiniz.`n" -ForegroundColor Cyan
