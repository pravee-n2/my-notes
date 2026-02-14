## Step 1 — Install apps

From Play Store install:

- **Obsidian**
    
- **Termux** (optional but helpful)
    

---

## Step 2 — Download your vault from GitHub

We need the vault folder on phone.

### Easiest way:

1. Open browser:
    

```
https://github.com/pravee-n2/Obsidian_Vault
```

2. Tap:
    

```
Code → Download ZIP
```

3. Extract ZIP to:
    

```
Internal Storage/Documents/Obsidian/Office
```

---

## Step 3 — Open vault in Obsidian mobile

1. Open Obsidian app
    
2. Tap:
    

```
Open folder as vault
```

3. Select:
    

```
Obsidian_Vault (the extracted folder)
```

Now your notes appear on mobile 🎉

---

## Step 4 — Install Git plugin in mobile Obsidian

Same as laptop:

```
Settings → Community Plugins
```

Search:

```
Git
```

Install + Enable.

---

## Step 5 — Set same sync settings

Set:
- Auto pull on startup
- Turn off pull feature in Auto commit and sync
- Auto commit and sync manually when the editing ends.

Now phone will sync too.

---
# Generate token for Repo

![[Pasted image 20260214083645.png]]


You must use:

> **GitHub username + Personal Access Token (PAT)**

Think of PAT as a special Git password.

---

# Why password won’t work

GitHub removed password authentication for security.

So:

- ❌ GitHub password → WILL FAIL
    
- ✅ Personal Access Token → WORKS
    

---

# How to generate the correct token (2 minutes)

Do this on your laptop browser:

1. Open:
    

```
https://github.com/settings/tokens
```

2. Click:
    

```
Generate new token (classic)
```

3. Give name:
    

```
obsidian-mobile
```

4. Expiry:
    

```
No expiry
```

(or 1 year)

5. VERY IMPORTANT — Tick this:
    

```
repo  ✅
```

That’s enough.

6. Click:
    

```
Generate token
```

7. COPY the token immediately  
    (It will look like: `ghp_xxxxxxxxxxxxx`)
    

You cannot see it again later.

---

# Now fill in mobile Obsidian

In the screen you showed:

### Username:

```
(github_username)
```

### Password/Personal access token:

Paste the token you generated.

---

# Then do this

Restart Obsidian app.

Now try:

- Pull
    
- Commit & Sync
    

It should connect.

---

# How to Generate PAT

![[Pasted image 20260214083853.png]]

---

# What to select here

You already did most correctly:

- Note: `obsidian-mobile (type_your_desired_name)` ✔
    
- Expiration: `No expiration` ✔ (ok for personal use)
    
- Scope: `repo` ✔ VERY IMPORTANT
    

You don’t need to tick anything else.

---

# Now scroll down and click:

```
Generate token
```

---

# VERY IMPORTANT STEP (Don’t miss this)

After clicking generate, GitHub will show a long code like:

```
ghp_xxxxxxxxxxxxxxxxxxxxx
```

You must:

1. COPY it immediately
    
2. Save it somewhere temporarily
    

Because:

- GitHub will NEVER show it again
    

---

# Now go to your phone

In Obsidian Git settings:

### Username:

```
(github_username)
```

### Password / Personal Access Token:

Paste that token.

Then restart Obsidian app.

---

# After restart, try this inside mobile Obsidian:

Open command palette (search icon) → type:

```
Pull
```

Tap:

```
Git: Pull
```

If it connects → mobile sync is ready.

---
# Question: I used pull but it showed "Can't find a repository create one using the command"

That error is expected 👍 — and it tells us exactly what’s wrong.

> **"Can't find a repository"** on mobile means:  
> Your phone vault folder does NOT contain the `.git` folder.

So the mobile app is seeing only notes, not the Git repo.

This usually happens if you:

- Downloaded ZIP from GitHub  
    OR
    
- Copied files manually
    

ZIP download does NOT include the `.git` directory.

And without `.git`, Git plugin cannot sync.

---

# 🔴 Why this happened

When you did:

`Download ZIP`

GitHub gives only files:

`.md files folders`

But NOT:

`.git   ❌ (hidden repo data)`

So Obsidian mobile says:

> "No repository found"

---

You can directly copy the `.git` folder from laptop to phone.

This is the easiest non-technical method.

---

# Why this works

Git plugin only needs one thing:

`Vault folder must contain:    .git   ← repository data    .obsidian    notes`

If `.git` is present → mobile will detect repo instantly.

So instead of cloning on phone, you can just copy the full vault folder.

---

# EASIEST METHOD 
## Step 1 — On laptop

Go to:

`D:\(username)\Obsidian Vaults\Office`

Copy the ENTIRE folder:

`Office`

Important: It must include: (Else, drill down to the folder and enable "VIEW HIDDEN ITEMS" in File explorer, you will see `.git` folder, simply copy paste it into your Mobile Obsidian Folder)

`.git      ✔ .obsidian ✔ Career Clippings Financial Modelling Miscellaneous`

---

## Step 2 — Send to phone

Any method is fine:

- USB cable (best)
    
- ShareIt
    
- Nearby Share
    
- Google Drive (zip and upload)
    

Paste it to phone inside:

`Internal Storage/Documents/`

So path becomes:

`Documents/Office`

---

## Step 3 — Open in Obsidian mobile

Open Obsidian → Open folder as vault → select:

`Documents/Office`

Now Git plugin will detect repo automatically.

---

## Step 4 — Enter credentials

In mobile Git plugin:

Username:

`(github_username)`

Password:  
Paste the Personal Access Token.

Restart Obsidian once.

---

## Step 5 — Test sync

Use command palette:

`Git: Pull`

Then:

`Git: Commit & Sync`

Should work.

---

# VERY IMPORTANT WARNING ⚠️

When copying from laptop:

Make sure hidden folders are visible.

Because `.git` is hidden.

If you only copy visible files, repo won’t work.

### In Windows:

`View → Show → Hidden items ✔`

Then copy.

---
# How to set Author name for Commit?

![[Pasted image 20260214084416.png]]


Short answer:

👉 **Yes, use the SAME name and email as your desktop Git setup.**

---

# What to enter in each field

### Username on your git server

Already correct:

```
(github_username)
```

---

### Password / Personal access token

Paste the token you generated from GitHub:

```
ghp_xxxxxxxxxxxxxx
```

---

### Author name for commit

Use the same name you set earlier on laptop.

Example:

```
Praveen
```

(or your full name if you used that)

This is just a label shown in commit history.

---

### Author email for commit

Use the SAME email you used when configuring Git on laptop.

Example:

```
yourgithubemail@gmail.com
```

This should match the one you used in:

```
git config --global user.email
```

---

# Why keeping same name/email is important

If you use different ones:

- GitHub will show commits as from different people
    
- History will look messy
    
- Sync still works, but identity splits
    

If same:

- All devices look like one user
    
- Clean history
    

---

# Summary

Fill like this:

- Username → `(github_username)`
    
- Token → (paste PAT)
    
- Author name → `Praveen`
    
- Author email → same GitHub email
    

---
	