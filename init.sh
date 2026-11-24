#!/usr/bin/env bash
# ==============================================================================
# antigravity-agent-workflow - Proje Başlatma Betiği (Bash)
# Geliştirici: Kaaner4x
# Lisans: MIT
# ==============================================================================

set -e

echo ">>> Antigravity Agent Workflow Kurulumu Başlatılıyor..."

# Dizin yapısını oluştur
mkdir -p .agents/rules .agents/skills .agents/scratch docs docs/is-akislari scripts

echo " [+] Gerekli dizinler doğrulandı (.agents, docs, scripts)"

# Örnek kural dosyası
RULE_FILE=".agents/rules/genel-kurallar.md"
if [ ! -f "$RULE_FILE" ]; then
    cat << 'EOF' > "$RULE_FILE"
# Proje Ajan Kuralları (Antigravity Rules)

1. Dil Standardı: Tüm yanıtlar ve dokümanlar Türkçe olmalıdır.
2. Kodlama Kalitesi: Temiz, test edilebilir ve modüler kod üretilmelidir.
3. Güvenlik: Sandbox kurallarına ve izin politikalarına riayet edilmelidir.
EOF
    echo " [+] Örnek kural dosyası oluşturuldu: $RULE_FILE"
fi

echo ">>> Kurulum tamamlandı! Detaylar için README.md dosyasına göz atın."
