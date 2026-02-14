## 🧭 Overall Idea (simple understanding)

Your vault will live in 3 places:

```
Laptop 1  ←→  GitHub Repo  ←→  Laptop 2
                        ←→  Android (later)
```

You will:

- Push = send notes to GitHub
    
- Pull = download latest notes
    

---

## 🪜 STEP 1 — Create a GitHub repository

1. Go to:  
    [https://github.com](https://github.com/)
    
2. Create account (if not already)
    
3. Click:
    

```
New Repository
```

Name it:

```
obsidian-vault
```

IMPORTANT:

- Keep it **Private**
    
- Do NOT add README (leave empty)
    

Click:

```
Create repository
```

---

## 🪜 STEP 2 — Locate your Obsidian vault folder

Example:

```
C:\Users\YourName\Documents\ObsidianVault
```

Open that folder.

---

## 🪜 STEP 3 — Initialize Git inside vault

Inside the vault folder:

Right click → Open Terminal / CMD

Run:

```bash
git init
```

---

## 🪜 STEP 4 — Connect to GitHub repo

Copy your repo URL from GitHub:

Example:

```
https://github.com/yourname/obsidian-vault.git
```

Then run:

```bash
git remote add origin https://github.com/yourname/obsidian-vault.git
```

---

## 🪜 STEP 5 — First upload (important step)

Run:

```bash
git add .
git commit -m "Initial vault upload"
git branch -M main
git push -u origin main
```

Now your entire vault is stored in GitHub 🎉

---

## 🪜 STEP 6 — Setup on second laptop (office)

Install:

- Git
    
- Obsidian
    

Then:

Open terminal and run:

```bash
git clone https://github.com/yourname/obsidian-vault.git
```

This will download the full vault.

Then:

- Open Obsidian
    
- Open existing vault
    
- Select this folder
    

Done.

---

## 🪜 STEP 7 — Daily workflow (very important)

Whenever you finish working on Laptop 1:

```bash
git add .
git commit -m "updated notes"
git push
```

On Laptop 2 before starting work:

```bash
git pull
```

That's it.

---

## 🪜 STEP 8 — AUTOMATIC syncing (Best method)

Install inside Obsidian:

```
Settings → Community Plugins
```

Search:

```
Obsidian Git
```

Install it.

Then it can:

- Auto pull on startup
- Turn off - Pull feature in Auto commit and sync.
- Press - commit and sync after you edit files.
    

So you don’t need terminal.

---

## ⚠️ VERY IMPORTANT SETTINGS

Add a `.gitignore` file to avoid junk syncing.

Create file inside vault named:

```
.gitignore
```

Paste:

```
.obsidian/workspace
.obsidian/cache
.obsidian/plugins
```

This prevents conflicts.

---

