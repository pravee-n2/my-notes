
Whenever you update anything inside:

```
quartz-site/content/
```

---

## ✅ Standard Update Workflow (Every Time)

### 1️⃣ Build the site

```bash
npx quartz build --output docs
```

This converts your Markdown into the website inside `/docs`.

---

### 2️⃣ Add changes to Git

```bash
git add .
```

This stages:

- content changes
    
- docs build changes
    

---

### 3️⃣ Commit

```bash
git commit -m "update notes"
```

You can write anything inside quotes.

---

### 4️⃣ Push to GitHub

```bash
git push
```

---

### 🔁 That’s it.

After pushing:

- GitHub detects changes
    
- Rebuilds Pages automatically
    
- Website updates in ~1 minute
    

---

## 🔥 So your full update command sequence is:

```bash
npx quartz build --output docs
git add .
git commit -m "update"
git push
```

---

## 🧠 Important Rule

Always run:

```
npx quartz build --output docs
```

before pushing.

If you skip build → site won’t update.

---
# Auto-Update using .bat file:

We’ll create a `.bat` file so you just double-click and your site updates automatically.

---

## ✅ Step 1 — Create the BAT file

Inside:

```
D:\Obsidian Vaults\quartz-site
```

Create a new file named:

```
update-site.bat
```

---

## ✅ Step 2 — Paste this inside it

```bat
@echo off
echo Building Quartz site...
npx quartz build --output docs

echo.
echo Adding changes to Git...
git add .

echo.
echo Committing...
git commit -m "update site"

echo.
echo Pushing to GitHub...
git push

echo.
echo Done! Site will update in about 1 minute.

echo.
set /p =Press Enter to close...
```

Save the file.

---

## 🚀 Now your workflow becomes:

1. Edit notes inside:
    
    ```
    quartz-site/content
    ```
    
2. Double-click:
    
    ```
    update-site.bat
    ```
    
3. Done.
    

Website updates automatically.

---
