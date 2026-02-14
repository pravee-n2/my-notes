
# 🧭 Overall Architecture

`Obsidian Notes (Markdown files)         ↓ Git Commit + Push         ↓ GitHub Repository         ↓ GitHub Pages (auto builds site)         ↓ Public website URL         ↓ Google indexes it`

---

# 🚀 Step-by-Step Setup (Best Method)

## 1️⃣ Create a GitHub Repository

1. Go to: [https://github.com](https://github.com/)
    
2. Click **New Repository**
    
3. Name it:
    

`my-notes`

4. Set:
    

- Public ✅
    
- Initialize with README ✅
    

---

## 2️⃣ Connect Obsidian Vault to Git

You already installed Git, so:

Inside your vault folder:

`git init git remote add origin https://github.com/username/my-notes.git git add . git commit -m "first upload" git push -u origin main`

Now your notes are on GitHub.

---

## 3️⃣ Turn It Into a Website (GitHub Pages)

This is the magic part.

### Go to:

Repo → Settings → Pages

Set:

`Source: Deploy from branch Branch: main Folder: /root`

You’ll get a link like:

`https://username.github.io/my-notes/`

That is your website 🎉

---

# 🧱 Make It Look Like Obsidian Publish

Right now it will just show files.

To make it look like a real website, use one of these:

### ⭐ EASIEST: Quartz (Best for Obsidian)

GitHub:

`https://github.com/jackyzha0/quartz`

It converts Obsidian notes into a beautiful website.

Features:

- Backlinks
    
- Graph view
    
- Search
    
- Dark theme
    
- Auto deploy via GitHub
    

Exactly like Obsidian Publish 😄

---
# 🌍 Make It Appear in Google Search

After your site is live:

### 1️⃣ Wait

Google usually indexes in:

`3 days → 3 weeks`

### 2️⃣ Submit manually (faster)

Go to:

`https://search.google.com/search-console`

Add your site:

`https://username.github.io/my-notes/`

Submit sitemap.

---

# 🔄 Auto-Sync Workflow (Your Dream Setup)

Your current Git workflow already supports this:

1. Write notes in Obsidian
    
2. Press:
    

`Commit & Sync`

3. GitHub updates
    
4. Website updates automatically
    

---
# Install Quartz (Obsidian Publish Alternative)

This will give you:

- Beautiful note pages
    
- Dark mode
    
- Backlinks
    
- Graph view
    
- Search
    
- Auto deploy when you push notes
---

# 🧭 Do This Exactly

## Step 1 — Download Quartz

Open terminal inside your notes folder:

`cd path-to-your-vault`

Run:

`git clone https://github.com/jackyzha0/quartz .`

Yes, the dot is important.

This will install Quartz INTO your current repo.

---

## Step 2 — Install Node.js (if not installed)

Download:

`https://nodejs.org`

Install → restart PC.

Then check:

`node -v`

---

## Step 3 — Setup Quartz

Inside same folder:

`npm install npx quartz create`

Choose:

`content folder → your notes folder`

---

## Step 4 — Build Website

`npx quartz build`

It will create a `public` folder.

---

## Step 5 — Push to GitHub

`git add . git commit -m "Added Quartz" git push`

---

## Step 6 — Change GitHub Pages Source

Go to:

`Settings → Pages`

Change:

`Branch → main Folder → /public`

Save.

---
# Error encountered:

Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/Obsidian_Vault (main) $ git clone https://github.com/jackyzha0/quartz . fatal: destination path '.' already exists and is not an empty directory. Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/Obsidian_Vault (main) $

  
This is expected. Nothing is wrong.

The error happened because:

- You already have:
    
    - Notes
        
    - A git repo
        
    - Files inside the folder
        
- Quartz tried to clone into an empty folder, but yours is not empty.
    

So we must use the **correct method for existing repos**.

---

# 🛠️ Correct Way to Add Quartz to Existing Notes Repo

Do NOT use `git clone ... .` again.

Instead, do this:

## Step 1 — Download Quartz as ZIP

1. Open:
    

`https://github.com/jackyzha0/quartz`

2. Click:
    

`Code → Download ZIP`

3. Extract it.
    

You’ll get a folder like:

`quartz-main`

---

## Step 2 — Copy Files

Open the extracted folder.

Copy EVERYTHING inside it:

- package.json
    
- quartz folder
    
- quartz.config.ts
    
- etc.
    

Paste into:

`D:\Obsidian Vaults\Obsidian_Vault`

(Your vault root)

When asked:

`Replace files?`

Click:

`YES`

This is safe.

---

## Step 3 — Install Node Modules

Open Git Bash again in vault folder and run:

`npm install`

Wait 1–2 minutes.

---

## Step 4 — Build Site

Run:

`npx quartz build`

This creates:

`/public`

This is your website.

---

## Step 5 — Push to GitHub

`git add . git commit -m "Installed Quartz" git push`

---

## Step 6 — Final GitHub Pages Setting

Go to:

`Repo → Settings → Pages`

Change:

`Branch → main Folder → /public`

Click Save.

---
 
![[Pasted image 20260214092327.png]]
  

In this screenshot, there is a mistake:

`Obsidian_Vault  ├── 00 - Index  ├── 01 - Concepts  ├── ...  ├── quartz-4   ← ❌ WRONG PLACE`

I extracted Quartz as a **separate folder** inside the vault.

But Quartz must be placed in the **ROOT of the vault**, not inside a subfolder.

---

# 🛠️ Fix (2 minutes)

### Step 1 — Open `quartz-4` folder

Go inside:

`Obsidian_Vault/quartz-4`

You will see files like:

`package.json quartz.config.ts quartz/ public/ README.md`

---

### Step 2 — Move everything OUT

Select ALL files inside `quartz-4`:

`Ctrl + A Ctrl + X`

Now go back to:

`Obsidian_Vault`

Paste:

`Ctrl + V`

Now structure should look like:

`Obsidian_Vault  ├── 00 - Index  ├── 01 - Concepts  ├── quartz/  ├── package.json  ├── quartz.config.ts  ├── Things to Learn.md`

---

### Step 3 — Delete empty folder

Delete:

`quartz-4`

---

### Step 4 — Install Quartz

Open Git Bash in:

`Obsidian_Vault`

Run:

`npm install`

(wait 1–2 mins)

---

### Step 5 — Build website

Run:

`npx quartz build`

This creates:

`/public`

---

### Step 6 — Push to GitHub

`git add . git commit -m "Quartz installed" git push`

---

### Step 7 — Final GitHub Setting

Go to:

`GitHub → Settings → Pages`

Change:

`Folder → /public`

Save.

---

![[Pasted image 20260214092436.png]]
  

But look everything's now inside obsidian too. Yes 👍 this is NORMAL. Nothing is broken.

What you’re seeing is expected because:

You pasted Quartz into the **same vault** that Obsidian opens.

So now Obsidian is showing:

- your notes ✅
    
- quartz folder ✅
    
- docs/content files ✅
    
- config files ✅
    

Obsidian simply shows every folder inside the vault.

This does NOT affect your notes.

---

# 🧠 Why this happened

Quartz needs to live in the vault root:

`Obsidian_Vault/    00 - Index    01 - Concepts    quartz/    docs/    package.json    quartz.config.ts`

But Obsidian displays everything inside the vault.  
So you’re seeing Quartz system files too.

They are harmless.

---
# 🟢 Recommended Fix (Best Long-Term)

1. Create a new folder:
    

`D:\Obsidian Vaults\quartz-site`

2. Move these OUT of Obsidian_Vault into quartz-site:
    

`content docs quartz package.json package-lock.json quartz.config.ts`

3. Keep ONLY notes inside Obsidian_Vault.
    

---

# Why this is better

Quartz will read notes from:

`../Obsidian_Vault`

So:

- You write notes normally
    
- Quartz builds site separately
    
- Obsidian stays clean
    

This is how most people set it up.

---

# 🧭 Final Clean Structure (What we’re creating)

`D:\Obsidian Vaults\    ├── Obsidian_Vault     ← ONLY your notes (Obsidian opens this)    └── quartz-site        ← Website generator (separate)`

Obsidian will become clean again.

---

# 🧹 Step 1 — Create new folder

In Windows Explorer:

Go to:

`D:\Obsidian Vaults\`

Create a new folder:

`quartz-site`

---

# 📦 Step 2 — Move Quartz files OUT of vault

From inside:

`Obsidian_Vault`

Move these items to:

`quartz-site`

Move ONLY these:

`content docs quartz package.json package-lock.json quartz.config.ts public (if present)`

Do NOT move your note folders like:

`00 - Index 01 - Concepts 02 - Drivers ...`

Those must stay.

---

# 📁 After moving, it should look like:

### Obsidian_Vault (clean again)

`00 - Index 01 - Concepts 02 - Drivers ... Things to Learn.md`

### quartz-site

`content docs quartz package.json quartz.config.ts`

---

# ⚙️ Step 3 — Tell Quartz where your notes are

Now Quartz must read notes from your vault.

Open this file:

`quartz-site/quartz.config.ts`

Find a line like:

`contentDir: "content",`

Change it to:

`contentDir: "../Obsidian_Vault",`

Save.

---

# 📦 Step 4 — Install & Build (inside quartz-site)

Open Git Bash in:

`D:\Obsidian Vaults\quartz-site`

Run:

`npm install npx quartz build`

This will generate:

`public/`

---
 

![[Pasted image 20260214092714.png]]

Perfect 👍  
You did it correctly. That screenshot looks EXACTLY right.

Your structure now is clean:

`D:\Obsidian Vaults\    ├── Obsidian_Vault   ← your notes (Obsidian opens this)    └── quartz-site      ← website engine (correct)`

And inside `quartz-site` I can see:

- .github
    
- content
    
- docs
    
- quartz
    
- package.json
    
- quartz.config
    
- etc
    

This is the proper Quartz installation 👍

---

# 🔴 One IMPORTANT change needed

Right now Quartz is still looking at:

`content/`

But your real notes are in:

`../Obsidian_Vault`

We must connect Quartz to your vault.

---

# 🛠️ Do This (Simple & Safe)

## Step 1 — Open:

`D:\Obsidian Vaults\quartz-site\content`

Delete everything inside `content`  
(only demo files — safe to delete)

---

## Step 2 — Copy your notes INTO content

Copy these folders from:

`Obsidian_Vault`

Into:

`quartz-site/content`

Copy:

`00 - Index 01 - Concepts 02 - Drivers 03 - Templates 04 - Case Studies 05 - Mistakes 06 - Doubts 07 - Resources 08 - Attachments 09 - Interview Career Things to Learn.md`

Do NOT copy:

`.obsidian`

---

# After copying, it should look like:

`quartz-site/    content/       00 - Index       01 - Concepts       02 - Drivers       ...`

---

# 📦 Step 3 — Install + Build

Open Git Bash in:

`D:\Obsidian Vaults\quartz-site`

Run:

`npm install npx quartz build`

Wait 30–60 seconds.

You should now see:

`public/`

---

# 🌍 Step 4 — Preview locally

Run:

`npx quartz serve`

Then open:

`http://localhost:8080`

You’ll see your Obsidian notes as a website 😄

---

Its actually the BEST way to use Quartz.

And yes, you are 100% correct:

> Only the files inside the `content/` folder will be published to the website.

Nothing outside `content/` will appear on your site.

---

# 🧠 What this means (important)

Your setup now works like this:

`Obsidian_Vault        → Your full private notes quartz-site/content   → Only selected notes for public website`

So you get full control.

You can:

- Keep personal notes private
    
- Publish only study notes
    
- Publish only selected topics
    
- Slowly add content over time
    

---

# 🟢 Recommended workflow (very smart approach)

Instead of copying everything, do this:

1. Keep your main vault untouched:
    

`Obsidian_Vault/`

2. Inside:
    

`quartz-site/content/`

Manually copy ONLY what you want public.

Example:

`content/    Taxation/    GST/    DT/    Audit/    Index.md`

This becomes your public knowledge website.

---

# 🔥 Pro tip (used by many people)

You can treat `content/` like:

- A “public notes” folder
    
- A “blog”
    
- A “study portal”
    

Whenever a note is polished and clean:

→ Copy it to `content/`

---

# 🧾 Example strategy (perfect for CA prep)

Keep private:

`Mistakes Rough notes Interview prep Personal thoughts`

Publish:

`Concept notes Summaries Revision sheets Frameworks`

---

# 📦 Next step

After you add at least ONE note into:

`content/`

Run:

`npm install npx quartz build npx quartz serve`

Then open:

`http://localhost:8080`

You’ll see your note as a website.

---

  
# 📍 Where to run the commands

Go to this folder in File Explorer:

`D:\Obsidian Vaults\quartz-site`

Then:

### Method 1 (easiest)

- Right-click inside the folder (empty space)
    
- Click **“Git Bash Here”**
    

A black terminal window will open.

You should see something like:

`Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/quartz-site $`

That means you're in the correct place ✅

---

# 📦 Now run the commands there

Type one by one:

`npm install`

(wait till it finishes)

Then:

`npx quartz build`

Then to preview:

`npx quartz serve`

---

# 🌐 Open the site

After running `serve`, open in browser:

`http://localhost:8080`

You’ll see your notes as a website.

---

# Important note

You only need to run `npm install` ONE time (first setup).

After that, daily usage is just:

`npx quartz build`

or

`npx quartz serve`

---

# Error 

Look at your terminal path:

`/d/Obsidian Vaults/quartz-site/content`

You are running the command INSIDE the `content` folder ❌

But Quartz commands must be run from:

`/d/Obsidian Vaults/quartz-site`

Because `package.json` is there, not inside `content`.

That’s why it says:

`ENOENT: no such file or directory, open ...content/package.json`

---

# ✅ Fix (10 seconds)

In the same Git Bash window, just go one level up.

Type:

`cd ..`

Now your path should become:

`Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/quartz-site $`

This is the correct place.

---
Now run again:

`npm install`

(wait till it finishes)

Then:

`npx quartz build`

Then preview:

`npx quartz serve`

Open:

`http://localhost:8080`

---

Easy way to remember:

Run Quartz commands ONLY where this file exists:

`package.json`

That folder is:

`quartz-site`

NOT:

`quartz-site/content`

### Next step: Preview the site

In the SAME folder (`quartz-site`) run:

`npx quartz serve`

You should see something like:

`Server running at http://localhost:8080`

Open browser and go to:

`http://localhost:8080`

You’ll see your website.

---

# If the page looks empty

That just means:

You haven't added notes yet to:

`quartz-site/content`

So Quartz has nothing to show.

Just copy 1 note into `content` to test.

Example:

Copy:

`Things to Learn.md`

Into:

`quartz-site/content`

Then run again:

`npx quartz build npx quartz serve`

Now it will appear.

---

# ✅ Correct command to preview site (Quartz v4)

Run this instead:

`npx quartz build --serve`

This does BOTH:

- builds the site
    
- starts local server
    

---

# What you should see after running

Terminal will show something like:

`Quartz v4.x.x Local server started at http://localhost:8080`

Now open browser and go to:

`http://localhost:8080`

---

# If page looks empty

That means `content/` has no notes yet.

So copy 1 test note:

Example:

Copy this file from your vault:

`Things to Learn.md`

Paste into:

`quartz-site/content/`

Then run again:

`npx quartz build --serve`

Now you’ll see that note as a webpage.

---

![[Pasted image 20260214094052.png]]
  

That 404 page means:

> Quartz is running correctly, but there are NO notes inside `content/` yet.

So it has nothing to show.

---

# Why you’re seeing 404

Quartz only shows pages that exist inside:

`quartz-site/content/`

Right now that folder is probably:

- empty  
    or
    
- has no `.md` files
    

So homepage = not found.

---

# Important concept (key understanding)

Quartz works like this:

`content/    index.md        ← homepage    gst.md    tax.md`

If there is NO `index.md`, it shows 404.

---

# Best first test (recommended)

Inside `content`, create a file:

`index.md`

Put this inside:

`# Welcome  This is my knowledge base.`

Save.

Run again:

`npx quartz build --serve`

Now homepage will open 😄

---

# How your future workflow will look

You will:

1. Write notes in Obsidian (private vault)
    
2. Copy selected notes into:
    

`quartz-site/content/`

3. Run:
    

`npx quartz build`

4. Push to GitHub
    
5. Site updates publicly
    

---
![[Pasted image 20260214094144.png]]
  
 
You DO have a note inside `content`, but Quartz still shows 404 because:

👉 The homepage must be named exactly:

`index.md`

Right now you have:

`Things to Learn.md`

Quartz doesn't treat that as the homepage.

---

# 🎯 Fix (10 seconds)

Just rename this file:

`Things to Learn.md`

to:

`index.md`

So the folder becomes:

`content/    index.md`

---

# Then rebuild

In Git Bash (inside quartz-site):

`npx quartz build --serve`

Now refresh:

`http://localhost:8080`

It will open 😄

---

# Why this happens

Quartz works like websites:

`index.md = homepage`

Same as:

`index.html`

Without it → 404

---

# Later you can add more notes like:

`content/    index.md    gst.md    dt.md    audit.md`

They will appear automatically.

---

![[Pasted image 20260214094248.png]]

You're VERY close. The problem is small and I can spot it from your screenshot.

You renamed the file visually, but Quartz still isn’t detecting a homepage because one of these is happening:

### Most likely causes (one of these 100% is true)

1. The file is actually named:
    

`index.md.md`

2. The file is:
    

`index.MD`

3. Windows is hiding extensions, so it looks like `index.md` but isn’t.
    

---

# 🔍 Let’s verify properly

Go to:

`quartz-site/content`

Turn ON file extensions:

Top menu → View → ✔ File name extensions

Now check the exact name.

It MUST be:

`index.md`

Nothing else.

---

# Fix (safe method)

Delete current file.

Create a fresh one:

Right-click → New → Text Document

Rename it to:

`index.md`

Open it and paste:

`# Welcome  This is my public knowledge base.`

Save.

---

# Rebuild

In Git Bash:

`npx quartz build --serve`

Refresh:

`http://localhost:8080`

---

# Before we publish — important decision

Your current structure is PERFECT:

`Obsidian_Vault        → Private notes quartz-site/content   → Public notes`

So you can now:

- Copy only selected notes into `content`
    
- Keep rest private
    
- Publish only polished content
    

This is the ideal system.

---

![[Pasted image 20260214094431.png]]

But the title index is also showing


Good catch 👀  
That “index” title showing at the top is normal — and easy to fix.

Right now Quartz is using the **file name** as the page title:

`index.md  →  title becomes "index"`

We’ll override that.

---

# ✏️ Fix the page title (proper way)

Open:

`quartz-site/content/index.md`

Add this at the VERY TOP of the file:

`--- title: Praveen’s Knowledge Hub ---`

So your file should look like:

`--- title: Praveen’s Knowledge Hub ---  # Praveen’s Knowledge Hub  Welcome to my public knowledge base.  ## 📚 CA Final Notes - Direct Tax - GST - Audit  ## 🧠 Concepts Deep explanations of financial and business concepts.  ## ✍️ Blog My learning journey, mistakes, and strategies.  ## 📁 Resources Templates, summaries, and revision tools.`

---

# Rebuild

Run again:

`npx quartz build --serve`

Refresh the page.

Now the top title will be:

`Praveen’s Knowledge Hub`

NOT:

`index`

---

# Why this works

That section:

`--- title: ... ---`

is called **frontmatter**.

It tells Quartz:

> “Use this as page title instead of filename.”

---

# Optional (make it look cleaner)

You can also change the site name (left sidebar top).

Open:

`quartz-site/quartz.config.ts`

Find:

`pageTitle: "Quartz 4",`

Change to:

`pageTitle: "Praveen’s Knowledge Hub",`

Rebuild again.

Now left side will show your name instead of Quartz 4.

---

# 🚀 STEP 1 — Create GitHub repo (website host)

Go to GitHub → create a NEW repository:

Name:

`notes-site`

Settings:

- Public ✅
    
- DO NOT add README
    
- DO NOT add license
    
- DO NOT add gitignore
    

Click **Create repository**

---

# 🚀 STEP 2 — Upload your quartz-site folder

Open Git Bash inside:

`D:\Obsidian Vaults\quartz-site`

Run these commands one by one:

`git init git add . git commit -m "Initial website" git branch -M main git remote add origin https://github.com/pravee-n2/notes-site.git git push -u origin main`

(If Git asks login → sign in once)

---

# 🚀 STEP 3 — Turn ON GitHub Pages

Open your new repo on GitHub:

`notes-site → Settings → Pages`

Set:

`Source: Deploy from branch Branch: main Folder: /public`

Click **Save**

---

# 🌐 STEP 4 — Your site URL

After 1–2 minutes, your website will be live at:

`https://pravee-n2.github.io/notes-site/`

Open that link.

You should see your homepage exactly like localhost.

---
  

##### Error:

Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/quartz-site (main) $ git push -u origin main To https://github.com/pravee-n2/my-notes.git ! [rejected] main -> main (fetch first) error: failed to push some refs to 'https://github.com/pravee-n2/my-notes.git' hint: Updates were rejected because the remote contains work that you do not hint: have locally. This is usually caused by another repository pushing to hint: the same ref. If you want to integrate the remote changes, use hint: 'git pull' before pushing again. hint: See the 'Note about fast-forwards' in 'git push --help' for details. Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/quartz-site (main)

  

###### Solution:

Perfect — this error is normal 👍  
And I can see exactly what happened.

You accidentally connected this folder to your OLD repo:

`my-notes`

But we wanted a NEW repo:

`notes-site`

So Git is saying:

> “Remote already has files that don’t match your local files.”

We’ll fix it in 20 seconds.

---

# 🔧 Fix (Safe & Clean)

You just need to change the remote link.

Run these commands inside `quartz-site`:

### 1️⃣ Remove wrong connection

`git remote remove origin`

### 2️⃣ Connect to the NEW repo (notes-site)

`git remote add origin https://github.com/pravee-n2/notes-site.git`

### 3️⃣ Push again

`git push -u origin main`

---

# ⚠️ Important check

Before Step 2:

Did you already create this repo on GitHub?

`notes-site`

If NOT:

1. Go to GitHub
    
2. Create new repo
    
3. Name:
    

`notes-site`

4. Keep it EMPTY (no README)
    

Then run the commands above.

---

# Why this happened

Earlier:

`my-notes  → connected to Obsidian vault repo`

Now:

`quartz-site → must connect to website repo`

Two separate repos:

- my-notes → raw notes
    
- notes-site → website
    

---

# After push succeeds

Go to:

`notes-site → Settings → Pages`

Set:

`Source: Deploy from branch Branch: main Folder: /public`

Save.

Then your site will be LIVE at:

`https://pravee-n2.github.io/notes-site/`

---

##### Error:

Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/quartz-site (main) $ git pull origin main --allow-unrelated-histories fatal: 'origin' does not appear to be a git repository fatal: Could not read from remote repository. Please make sure you have the correct access rights and the repository exists.

###### Solutions:

Don’t worry 👍 nothing is broken.  
This happened because earlier we removed/changed the remote, so now this folder is not connected to any GitHub repo.

That’s why Git says:

`'origin' does not appear to be a git repository`

It simply means:

> “I don’t know which GitHub repo to talk to.”

We just need to reconnect it.

---

# We’ll use the SAME repo (my-notes) — simplest way

You already have this repo:

`https://github.com/pravee-n2/my-notes`

Now reconnect quartz-site to it.

Inside Git Bash (in quartz-site), type:

`git remote add origin https://github.com/pravee-n2/my-notes.git`

Then run:

`git pull origin main --allow-unrelated-histories`

Then:

`git push -u origin main`

---

# What this will do

- Connect quartz-site → my-notes repo
    
- Merge old notes + new website files
    
- Upload the website
    

---

# After push succeeds

Go to:

`GitHub → my-notes → Settings → Pages`

Change to:

`Source: Deploy from branch Branch: main Folder: /public`

Save.

After 1–2 minutes, your site will be LIVE at:

`https://pravee-n2.github.io/my-notes/`

Fully online.  
Not dependent on your PC.  
Google can index it.

---
##### Error:

Dr.Senku@Praveen MINGW64 /d/Obsidian Vaults/quartz-site (main) $ git pull origin main --allow-unrelated-histories remote: Enumerating objects: 3, done. remote: Counting objects: 100% (3/3), done. remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0) Unpacking objects: 100% (3/3), 854 bytes | 122.00 KiB/s, done. From https://github.com/pravee-n2/my-notes * branch main -> FETCH_HEAD * [new branch] main -> origin/main Auto-merging README.md CONFLICT (add/add): Merge conflict in README.md Automatic merge failed; fix conflicts and then commit the result.

###### Solution:

Perfect 👍  
This is actually progress — not an error.

Git successfully connected and started merging, but stopped because of a small conflict in:

`README.md`

This happens because:

- GitHub repo already has a README
    
- Your quartz-site also has a README
    
- Git doesn’t know which one to keep
    

So it paused and asked you to decide.

We’ll fix it in 30 seconds.

---

# 🛠️ Fix the merge conflict (very easy)

Just run these commands:

`git add . git commit -m "merge quartz site" git push -u origin main`

That’s it.

You don’t even need to open the README file.  
We’re just telling Git:

> “Accept everything and continue.”

---

# What will happen next

After push completes:

Go to:

`GitHub → my-notes → Settings → Pages`

Set:

`Source: Deploy from branch Branch: main Folder: /public`

Click Save.

---

# Your website will be LIVE at:

`https://pravee-n2.github.io/my-notes/`

Wait 1–2 minutes after saving Pages settings.

---

---
![[Pasted image 20260214095119.png]]
![[Pasted image 20260214095123.png]]

Why is the website not loading?
###### Solution:

You’re extremely close — nothing is broken 👍  
This is the FINAL small configuration step.

From your screenshots I can clearly see the issue:

- Your repo has:
    
    `/public /content /quartz`
    
- But GitHub Pages is still showing the default empty page:
    
    `my-notes`
    

That means GitHub Pages is still publishing from `/root` instead of `/public`.

Quartz builds the real website into:

`public/`

GitHub must be told to use that folder.

---

# 🔧 Fix (1 minute)

Go here:

`GitHub → my-notes → Settings → Pages`

Under **Build and deployment**

Change to:

`Source: Deploy from branch Branch: main Folder: /public`

Then click:

`Save`

---

# What will happen next

GitHub will show a message like:

`Your site is being built…`

Wait 1–2 minutes.

Then refresh:

`https://pravee-n2.github.io/my-notes/`

Now your Quartz site will appear (same as localhost).

---

# Why it showed blank till now

GitHub was serving:

`/root`

But Quartz site exists in:

`/public`

So it was showing the default repo landing page.

---

# One more IMPORTANT step (after changing Pages folder)

Every time you change content, you must rebuild:

Inside `quartz-site`:

`npx quartz build git add . git commit -m "update site" git push`

GitHub will auto-update the website.

---

Quartz + GitHub Pages just needs one proper method to deploy.

GitHub Pages does NOT allow `/public` selection for project repos.

So we will use the **correct official Quartz deployment method**.

---

# 🚨 Important Truth

For Quartz sites, GitHub Pages should use:

`/docs`

NOT `/public`

Because Quartz is designed to deploy to `/docs` when using GitHub Pages.

Right now your Pages screen already says:

`Your GitHub Pages site is currently being built from the /docs folder`

That is actually CORRECT.

So don't switch to root.

---

# So why is site blank?

Because the built site is in:

`/public`

But GitHub is reading:

`/docs`

We must copy the built files into `/docs`.

---

# 🔧 FINAL FIX (1 minute)

Inside your quartz-site folder run:

`npx quartz build --output docs`

This tells Quartz:

> Put the website into `/docs` instead of `/public`

---

Then push:

`git add . git commit -m "deploy site" git push`

---

# What happens now

GitHub Pages already uses:

`main → /docs`

So after push:

- It will detect new files in `/docs`
    
- Build automatically
    
- Your site will appear
    

---

# After 1–2 minutes open:

`https://pravee-n2.github.io/my-notes/`

You should see your Quartz homepage.

---

# Why this is the cleanest setup

We will use:

`content → your notes docs    → live website`

And ignore `/public` completely.

This is the standard GitHub Pages way.

---

If is refreshed now and website is loading

You just built your own Obsidian-Publish alternative — fully free, fully yours.

This is a big milestone. Seriously.

---

# 🟢 Current Status (What you have now)

Your site is:

- ✅ Fully online
    
- ✅ Hosted on GitHub servers
    
- ✅ Not dependent on your PC
    
- ✅ Publicly accessible 24×7
    
- ✅ Auto-updatable from your notes
    
- ✅ Structured like Obsidian Publish
    
- ⏳ Will become Google searchable (in a few days/weeks)
    

Link:

`https://pravee-n2.github.io/my-notes/`

---

# 🧠 How your system now works

You now have a powerful pipeline:

`Obsidian Vault (private)         ↓ Copy selected notes         ↓ quartz-site/content (public notes)         ↓ npx quartz build --output docs         ↓ git push         ↓ LIVE WEBSITE`

You control what becomes public.

---

# 📌 Your daily workflow (SUPER SIMPLE)

Whenever you want to update site:

### 1️⃣ Add / edit notes inside:

`quartz-site/content`

### 2️⃣ Build site:

`npx quartz build --output docs`

### 3️⃣ Push:

`git add . git commit -m "update" git push`

Done.  
Site updates in ~1 minute.

---

# Error:

``Failed to emit from plugin `CustomOgImages` codepoint 31-20e3 not found in map``

This happens when:

- One of your notes contains an emoji like:
    
    - 1️⃣ 2️⃣ 3️⃣
        
    - special combined emoji
        
- Quartz tries to generate a social preview image
    
- The emoji font mapping fails
    

So build crashes.

Your note:

`How to update site using Quartz.md`

probably contains numbered emojis like:

`1️⃣ Step 1 2️⃣ Step 2`

Those are the problem.

---

# 🛠️ FASTEST FIX (recommended)

We simply disable that feature.

Open this file:

`quartz-site/quartz.config.ts`

Scroll to the bottom and find this line:

`Plugin.CustomOgImages(),`

Change it to:

`// Plugin.CustomOgImages(),`

(just add `//` in front)

Save.

---

# Then rebuild

Run:

`npx quartz build --output docs`

It should work now without crashing.

---

# What you just disabled

This feature was trying to auto-create:

- Social media preview images
    
- When someone shares your link on WhatsApp / Twitter / LinkedIn
    

Not important right now.

We can re-enable later.

---
# Also this warning is harmless:

`isn't yet tracked by git, dates will be inaccurate`

It just means that note hasn’t been committed yet.

Ignore it.

---

# After editing config

Do this:

`npx quartz build --output docs git add . git commit -m "fix og image error" git push`

Your site will update.

---

# Error - HTML not loading

![[Pasted image 20260214095900.png]]
  

###### Solution:

Nothing is broken 😄  
This is actually expected — your CSS didn’t load.

That’s why the site looks like:

- No styling
    
- Big plain text
    
- Elements scattered
    

Which means:

`HTML loaded ✅ CSS path broken ❌`

And I know exactly why this happened.

---

# 🎯 Root Cause

When using GitHub Pages with a project repo:

`https://pravee-n2.github.io/my-notes/`

Quartz MUST know your base URL.

But in your config, it still says:

`baseUrl: "quartz.jzhao.xyz"`

So the site is trying to load styles from:

`quartz.jzhao.xyz/index.css`

Instead of:

`pravee-n2.github.io/my-notes/index.css`

So styling fails.

---

# 🔧 Fix (30 seconds)

Open this file:

`quartz-site/quartz.config.ts`

Find this line:

`baseUrl: "quartz.jzhao.xyz",`

Change it to:

`baseUrl: "pravee-n2.github.io/my-notes",`

IMPORTANT:

- No https
    
- No trailing slash
    

---

# Then rebuild + push

Run:

`npx quartz build --output docs git add . git commit -m "fix base url" git push`

---

# After 1 minute

Refresh:

`https://pravee-n2.github.io/my-notes/`

Your site will look normal again:

- Dark theme
    
- Sidebar
    
- Search working
    
- Proper layout
    

---

# Why this happened

Quartz needs baseUrl to correctly generate:

`/index.css /static/... /tags/...`

But project sites use:

`/my-notes/index.css`

So we must tell it the repo name.

---

![[Pasted image 20260214095947.png]]

# 1️⃣ Why does it show “Quartz 4” on the top left?

That text comes from this line in your `quartz.config.ts`:

`pageTitle: "Quartz 4",`

That value becomes the site title in the sidebar header.

It is NOT a bug.  
It’s just the default name from the Quartz template.

---

## ✅ How to change it

Open:

`quartz-site/quartz.config.ts`

Find:

`pageTitle: "Quartz 4",`

Change it to:

`pageTitle: "Praveen’s Knowledge Hub",`

Then:

`npx quartz build --output docs git add . git commit -m "update site title" git push`

Refresh after 1 minute.

Now the top-left will show your brand instead of Quartz 4.

---
