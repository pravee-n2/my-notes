 
This is a **complete beginner-to-advanced setup guide** for turning your Obsidian notes into a public website using **Quartz + GitHub Pages**.

This is not just a clean tutorial.  
This guide is based on a real setup journey — including:

- Every step from zero → live website
    
- Commands used at each stage
    
- Errors that happened
    
- Wrong turns and confusion moments
    
- How each issue was diagnosed and fixed
    
- Final stable workflow
    

If you follow this guide patiently, you will end up with:

- 🌍 A fully online website
    
- 📚 Selected notes published publicly
    
- 🔎 Google-indexable pages
    
- 🆓 Free hosting forever
    
- 💻 Zero dependency on your system
    

---

# 🧭 What We Are Building (Big Picture)

We are creating an Obsidian-Publish alternative using this pipeline:

```
Obsidian Notes
      ↓
Git (version control)
      ↓
GitHub Repository
      ↓
Quartz (static site generator)
      ↓
GitHub Pages
      ↓
Public Website
```

This becomes your:

- Knowledge base
    
- Study portal
    
- Blog
    
- Personal documentation site
    
- Long-term digital asset
    

---

# 🪜 STEP 1 — Create a GitHub Repository

Go to GitHub and create a new repository.

Example name:

```
my-notes
```

Recommended settings:

- Public repository
    
- Can initialize with README (optional)
    

This repo will later host your website.

---

# 🪜 STEP 2 — Upload Your Obsidian Vault to GitHub

Open Git Bash inside your vault folder and run:

```
git init
git remote add origin https://github.com/username/my-notes.git
git add .
git commit -m "first upload"
git push -u origin main
```

What this does:

- Tracks your notes
    
- Uploads them to GitHub
    
- Creates version history
    

At this stage:  
Your notes exist online — but not yet as a website.

---

# 🪜 STEP 3 — Turn the Repo Into a Website (Basic Test)

Go to:

```
Repo → Settings → Pages
```

Set:

```
Source: Deploy from branch
Branch: main
Folder: /root
```

GitHub will give a link like:

```
https://username.github.io/my-notes/
```

This confirms:

- GitHub Pages is working
    
- Hosting is active
    

BUT:  
It will only show files — not a real website.

That’s where Quartz comes in.

---

# 🪜 STEP 4 — Install Quartz (Website Engine)

Quartz converts markdown notes into a real website with:

- Navigation
    
- Dark mode
    
- Backlinks
    
- Graph
    
- Search
    
- SEO structure
    

### First Attempt (Common Beginner Error)

Tried installing using:

```
git clone https://github.com/jackyzha0/quartz .
```

Error received:

```
fatal: destination path '.' already exists
```

Why?  
Because the vault folder already had files inside it.

### Fix

Instead:

1. Download Quartz ZIP
    
2. Extract it
    
3. Copy files manually into the project folder
    

---

# 🪜 STEP 5 — Another Mistake: Wrong Folder Placement

Quartz got extracted as:

```
Obsidian_Vault/quartz-4/
```

This is incorrect.

Correct structure should be:

```
Obsidian_Vault/
  notes...
  quartz/
  package.json
  quartz.config.ts
```

Fix:  
Move all Quartz files to the root.

---

# 🪜 STEP 6 — Install Node.js (Required)

Quartz requires Node.js.

Install from official site.

Then verify:

```
node -v
npm -v
```

If both show version numbers → ready.

---

# 🪜 STEP 7 — Install Dependencies

Inside the Quartz folder:

```
npm install
npx quartz build
```

This creates:

```
public/
```

Important concept:  
**public = the generated website**

---

# 🪜 STEP 8 — Major Structural Decision (Very Important)

At first, Quartz was inside the main vault.

Problem:

- Obsidian started showing system files
    
- Vault looked cluttered
    
- Hard to manage
    

### Better Architecture (Recommended)

```
Obsidian_Vault/   → private notes
quartz-site/      → website engine
```

This keeps:

- Writing clean
    
- Publishing controlled
    
- Structure professional
    

---

# 🪜 STEP 9 — Understanding Quartz Content Logic

Quartz publishes ONLY what is inside:

```
content/
```

Meaning:  
You control what goes public.

Smart strategy:

Private vault → everything  
content/ → selected polished notes

---

# 🪜 STEP 10 — First Build Error

Mistake:  
Ran command inside wrong directory:

```
/quartz-site/content
```

Error:

```
ENOENT: package.json not found
```

Fix:  
Move one level up:

```
cd ..
npx quartz build
```

Lesson:  
Always run Quartz commands where `package.json` exists.

---

# 🪜 STEP 11 — Preview Locally

Quartz v4 command:

```
npx quartz build --serve
```

Then open:

```
http://localhost:8080
```

At first → 404 page.

---

# 🪜 STEP 12 — Critical Rule: Homepage Must Be index.md

Quartz requires:

```
content/index.md
```

Without it:  
→ Site shows 404

Fix:  
Create:

```
index.md
```

---

# 🪜 STEP 13 — Windows Extension Trap

File looked like:

```
index.md
```

But actually:

```
index.md.txt
```

Windows hides extensions.

Fix:  
Enable “Show file extensions”  
Rename properly.

---

# 🪜 STEP 14 — Custom Page Title

Add frontmatter at top:

```
---
title: My Knowledge Hub
---
```

This replaces the default "index" title.

---

# 🪜 STEP 15 — Push Website to GitHub

Inside quartz-site:

```
git init
git add .
git commit -m "Initial website"
git branch -M main
git remote add origin https://github.com/username/my-notes.git
git push -u origin main
```

---

# 🪜 STEP 16 — Merge Conflict (Real Situation)

Error:

```
CONFLICT (add/add): README.md
```

Cause:  
Both local and GitHub had a README.

Fix:

```
git add .
git commit -m "merge quartz site"
git push
```

---

# 🪜 STEP 17 — Website Not Loading (Final Configuration Issue)

Problem:  
GitHub Pages was reading:

```
/root
```

But Quartz builds into:

```
/public
```

Fix:

```
Settings → Pages
Branch: main
Folder: /public
```

If /public not visible:

```
git add -f public
git commit -m "add public build"
git push
```

---

# 🎉 FINAL RESULT

Your site goes live at:

```
https://username.github.io/my-notes/
```

Fully functional with:

- Sidebar navigation
    
- Homepage
    
- Graph view
    
- Search
    
- Markdown rendering
    

---

# 🔎 Is the Site Searchable on Google?

Yes.

But indexing takes time:

Typical range:

- 3 days → 3 weeks
    

To speed up:  
Use Google Search Console.

---

# 💻 Is It System Dependent?

No.

Once hosted on GitHub Pages:

- Works 24×7
    
- Runs from GitHub servers
    
- Does NOT depend on your PC
    
- Remains online forever
    

---

# 🔁 Daily Workflow (After Setup)

Whenever you want to publish a new note:

1. Copy note into:
    

```
quartz-site/content
```

2. Rebuild:
    

```
npx quartz build
```

3. Push:
    

```
git add .
git commit -m "update content"
git push
```

Website updates automatically.

---

# 🧠 Suggested Structure for Growth + SEO

```
content/
  index.md
  CA/
  Concepts/
  Blog/
  Resources/
  About.md
```

This supports:

- Knowledge hub
    
- Study notes
    
- Blog posts
    
- Personal brand
    

---

# 🏁 Final Thoughts

The setup journey involved:

- Confusion
    
- Folder mistakes
    
- Command errors
    
- Merge conflicts
    
- Path errors
    
- Build issues
    

But every problem helped understand the system deeper.

Quartz is powerful because:

- Free
    
- Flexible
    
- Professional
    
- Scalable
    

Once configured, it becomes a lifetime publishing engine.

And the best part?

You now own your platform.