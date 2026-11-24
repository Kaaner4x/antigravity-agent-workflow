# Antigravity Özelleştirmeleri: Kurallar, Beceriler ve MCP

Antigravity projenizin ihtiyaçlarına tam uyum sağlamak üzere esnek bir özelleştirme altyapısı sunar.

---

## 1. Kurallar (Rules)

Kurallar, ajanın her mesajda uyması zorunlu prensiplerdir. `.agents/rules/` dizini altında markdown dosyaları olarak tanımlanır.

### Örnek: `.agents/rules/kod-standartlari.md`
```markdown
# Kod Standartları Kuralları

1. Kod içinde asla 'any' tipi kullanılmamalıdır.
2. Her fonksiyonun üzerine JSDoc formatında Türkçe açıklama yazılmalıdır.
3. Hata yönetiminde sessiz 'try-catch' blokları kesinlikle yasaktır; hatalar loglanmalıdır.
```

---

## 2. Beceriler (Skills)

Beceriler, ajana belirli bir uzmanlık kazandıran talimat paketleridir. Her beceri kendi klasöründe bir `SKILL.md` dosyasına sahiptir.

### Örnek Beceri Yapısı:
```
.agents/skills/veritabani-migrasyonu/
└── SKILL.md
```

`SKILL.md` içeriğinde görevin nasıl adım adım yapılacağı ve hangi kontrollerin uygulanacağı tanımlanır.

---

## 3. Model Context Protocol (MCP)

MCP, ajanın yerel veritabanlarına, bulut servislerine veya üçüncü parti API'lere doğrudan erişmesini sağlayan açık protokoldür.

- **Veritabanı Entegrasyonu:** PostgreSQL veya MySQL şemalarını sorgulama.
- **Proje Yönetimi:** Jira veya ClickUp görevlerini güncelleme.
- **Tasarım:** Figma bileşenlerini doğrudan koda aktarma.
