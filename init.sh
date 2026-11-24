#!/usr/bin/env bash
# ==============================================================================
# antigravity-agent-workflow - Setup Script (Bash)
# Developer: Kaaner4x
# License: MIT
# ==============================================================================

set -e

echo ">>> Antigravity Agent Workflow Kurulumu Başlatılıyor..."

# Dizin yapısını oluştur
mkdir -p .agents/rules .agents/skills .agents/scratch docs docs/workflows scripts

echo " [+] Gerekli dizinler doğrulandı (.agents, docs/workflows, scripts)"

# Varsayılan kural dosyası
RULE_FILE=".agents/rules/general-rules.md"
if [ ! -f "$RULE_FILE" ]; then
    cat << 'EOF' > "$RULE_FILE"
# Genel Kurallar (Antigravity Rules)

1. Dil Standardı: Tüm yanıtlar ve dokümanlar Türkçe olmalıdır.
2. Kodlama Kalitesi: Temiz, test edilebilir ve modüler kod üretilmelidir.
3. Güvenlik: Sandbox kurallarına ve izin politikalarına riayet edilmelidir.
EOF
    echo " [+] Varsayılan kural dosyası oluşturuldu: $RULE_FILE"
fi

echo ">>> Kurulum tamamlandı! Detaylar için README.md dosyasına göz atın."
