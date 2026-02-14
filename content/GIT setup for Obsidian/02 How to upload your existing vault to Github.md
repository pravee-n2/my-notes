
## 📍 STEP 1 — Open terminal inside your vault folder

Go to your Obsidian vault location.

You should see:

- .obsidian folder
    
- Notes (.md files)

Example:

```
Documents → Obsidian_Vault
```

Inside that folder:

**Shift + Right Click → Open PowerShell window here**  
(or open CMD in that folder)

---

## 📍 STEP 2 — Run these commands ONE BY ONE

Copy-paste them exactly:

```bash
git init
```

```bash
git add .
```

Run these two commands (use your GitHub email):

```bash
git config --global user.name "Praveen"
```

``` bash
git config --global user.email "your_github_email_here"
```

⚠️ Important:  
Use the SAME email you used to create your GitHub account.

Example:

`git config --global user.email "praveen@email.com"`

Then,

```bash
git commit -m "Initial vault backup"
```

Now connect to GitHub (use YOUR repo link):

```bash
git remote add origin https://github.com/(github_username)/Obsidian_Vault.git
```

```bash
git branch -M main
```

```bash
git push -u origin main
```

---

## 📍 STEP 3 — What will happen

Git may ask:

```
Login via browser
```

Just sign in to GitHub → allow access.

After that:

✔ All notes uploaded  
✔ Vault backed up  
✔ Sync ready

---

## 📍 STEP 4 — Confirm success

Refresh this page:

```
github.com/(github_username)/Obsidian_Vault
```

You should see:

- All folders
    
- All .md notes
    

---

## 📍 STEP 5 — VERY IMPORTANT (prevent future conflicts)

Inside your vault folder create a file named:

```
.gitignore
```

Open it and paste:

```
.obsidian/workspace
.obsidian/cache
```

Then run:

```bash
git add .
git commit -m "Added gitignore"
git push
```

---

