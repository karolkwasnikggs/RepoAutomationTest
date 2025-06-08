# 🛠 SQL Release Automation using GitHub Actions

This repository helps you **automatically generate a SQL release file** when you create a new tag like `qa-*`, `preprod-*`, or `prod-*`.

It collects:
- All SQL scripts with changes (`ALTER`, `INSERT`, etc.)
- All new or modified schema objects (like `CREATE TABLE`)
- Full schema dump for the first release

---

## 📁 Folder Structure (you must follow this)

    .
    ├── changes/                      # short migrations (e.g. ALTER TABLE)
    │ ├── file1.sql
    │ └── file2.sql
    ├── schema/                       # full object definitions (e.g. CREATE OR REPLACE)
    │ ├── tables/
    │ │ └── table1.sql
    │ ├── views/
    │ │ └── view1.sql
    │ └── ...                         # other folders allowed (nested too)
    ├── releases/                     # will be auto-filled by GitHub
    ├── .github/
    │ └── workflows/
    │ │ └── release.yml


Do **not** change this structure.

---

## ✅ GitHub Setup (only once)

1. Go to your repo
2. Open **Settings → Actions → General**
3. Scroll down to **Workflow permissions**
4. Enable:  
   ☑ "Read and write permissions"  
5. Save

---

## 🔄 How it works

Whenever you push a tag like:

```bash
git tag qa-20240612
git push origin qa-20240612
```

GitHub will:
- Compare this tag to the previous qa-* tag
- Collect .sql files that changed since that tag
- Build one .sql file in the releases/ folder
- For the first tag, it includes the entire schema/ folder.


## 💡 When to use which folder?
- changes/ → short updates (e.g. ALTER TABLE, INSERT, UPDATE)
- schema/ → full object definitions (e.g. CREATE OR REPLACE VIEW)
- Don’t repeat the same logic in both
