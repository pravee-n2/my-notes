

In second laptop:

1. Install Git
    
2. Install Obsidian
    
3. Open terminal in the folder where you want vault
    

Run:

`git clone https://github.com/(github_username)/Obsidian_Vault.git`

Then open that folder in Obsidian.

Install Obsidian Git plugin there also.

Done — both laptops sync.

---
Let’s set up Git sync on your **new device** properly for the first time.

Since you already have:

- ✅ A GitHub repository
    
- ✅ Working setup on your old device  
    Now we just need to **connect this new device to that same repo**.
    

---

# 🔥 FIRST TIME SETUP (New Device)

## ✅ STEP 1 — Install Git (Confirm)

Open terminal / command prompt and check:

```bash
git --version
```

If it shows a version → perfect.

---

## ✅ STEP 2 — Configure Git Identity (Very Important)

Run this (use the SAME email you used in GitHub):

```bash
git config --global user.name "Your Name"
git config --global user.email "yourgithubemail@example.com"
```

⚠ Use the same email linked to your GitHub account.

Check:

```bash
git config --list
```

---

## ✅ STEP 3 — Clone Your Existing Repository

Now go to the folder where you want your vault/project.

Example:

```bash
cd Documents
```

Then clone:

```bash
git clone https://github.com/yourusername/your-repo-name.git
```

This will:

- Download everything
    
- Create the `.git` folder automatically
    
- Connect this device to GitHub
    

You DO NOT manually create `.git`.

---

## ✅ STEP 4 — Open in Obsidian

1. Open Obsidian
    
2. Click **Open folder as vault**
    
3. Select the cloned folder
    

Done ✅

---

# 🔁 How Sync Will Work After This

On this new device:

After cloning:

1. Install **Obsidian Git plugin**
    
2. Enable:
    
    - Auto pull on startup
        
    - Auto push on save (optional)
        
    - Auto backup interval (like every 5 min)
        

Then it becomes automatic.

---

# ❓ VERY IMPORTANT

If this device already has:

- A folder with notes
    
- But NOT cloned from repo
    

DO NOT push immediately. Then your existing notes will be pushed to repository and wrong step = merge conflict headache 😅

Always use a new folder!