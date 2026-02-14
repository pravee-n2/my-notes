
If you use Obsidian with Git across multiple devices (home laptop, office laptop, mobile), you will eventually run into confusing errors like:

- “Conflicts detected”
    
- “Your local changes would be overwritten”
    
- “Updates were rejected (fetch first)”
    
- Files showing `<<<<<<< HEAD` and `>>>>>>> origin/main`
    
- Pull not working even after deleting files
    

This guide explains what these errors mean, why they happen, and how to fix them step-by-step. It’s written for beginners who just want their notes to sync safely.

---

# 1) Why These Errors Happen

These problems usually occur when:

1. You edit notes on Device A
    
2. You edit the same notes on Device B
    
3. Both versions are different
    
4. Git doesn’t know which version to keep
    

So it stops and asks you to resolve the conflict.

This is not a bug. It’s Git protecting your data.

---

# 2) What a Merge Conflict Looks Like

You may see something like this inside a file:

```
<<<<<<< HEAD
My local changes
=======
Changes from GitHub
>>>>>>> origin/main
```

Meaning:

- `HEAD` → your current device version
    
- `origin/main` → GitHub version
    
- Git is asking you which one to keep
    

You must remove these markers manually and choose the correct content.

---

# 3) If Remote Version Is Correct (Easiest Fix)

If GitHub has the correct notes and your laptop has outdated ones:

### Safest method:

1. Discard local changes
    
2. Pull from GitHub
    

This makes your device match the remote version exactly.

---

# 4) If Git Gets Stuck in Merge State

Sometimes even after discarding, Git still says:

- “Unmerged files”
    
- “Merge in progress”
    
- Pull not working
    

That means Git is stuck halfway.

### Clean fix:

Open Git Bash in your vault folder and run:

```
git reset --hard origin/main
```

This:

- Removes conflict state
    
- Deletes broken local changes
    
- Makes your vault identical to GitHub
    

Your data on GitHub remains safe.

---

# 5) The BIGGEST Cause of Conflicts in Obsidian

Most conflicts are NOT from notes.

They come from device-specific files like:

- `.obsidian/workspace.json`
    
- `.obsidian/app.json`
    
- `.obsidian/plugins/obsidian-git/data.json`
    
- `.obsidian/workspace-mobile.json`
    

These files change on every device automatically.

So Git keeps detecting “changes”.

---

# 6) Permanent Fix: Use .gitignore

You should stop syncing those files.

Create a `.gitignore` file in your vault and add:

```
.obsidian/workspace.json
.obsidian/workspace-mobile.json
.obsidian/app.json
.obsidian/plugins/obsidian-git/data.json
```

Then run:

```
git rm --cached .obsidian/workspace.json
git rm --cached .obsidian/workspace-mobile.json
git rm --cached .obsidian/app.json
git rm --cached .obsidian/plugins/obsidian-git/data.json
git add .gitignore
git commit -m "Ignore device-specific Obsidian files"
git push
```

This will:

- Keep files locally
    
- Stop syncing them
    
- Prevent future conflicts
    

Important: Do NOT ignore the whole `.obsidian` folder.  
It contains useful plugin and appearance settings that should sync.

---

# 7) Correct Obsidian Git Settings (Best for Multi-Device)

On all devices, use:

- Pull on startup → ON
    
- Auto commit → OFF
    
- Pull on commit → OFF
    
- Push on commit → ON (optional via Commit & Sync)
    

This setup gives you control and prevents background conflicts.

---

# 8) The Golden Workflow (Follow Forever)

Every time you open Obsidian:

1. Open Obsidian
    
2. Wait 5–10 seconds (let pull finish)
    
3. Start editing
    

When finished:

- Press “Commit & Sync”
    

That’s it.

---

# 9) NEVER Do This

Do NOT:

- Edit immediately after opening
    
- Push without pulling
    
- Delete files during a merge
    
- Force push unless you know what you’re doing
    

---

# 10) Common Error Messages Explained

### “Updates were rejected (fetch first)”

Meaning:

Remote has new changes.  
You must pull before pushing.

Fix:

```
Pull → then Commit & Sync
```

---

### “Your local changes would be overwritten”

Meaning:

Git sees local modified files.

Fix:

- Discard changes
    
- Pull again
    

---

### Want to overwrite remote completely?

Only if you're 100% sure:

```
git push --force
```

Warning: This deletes remote history.

---

# 11) Clean Multi-Device Rule

Whether using:

- Home laptop
    
- Office laptop
    
- Mobile
    

Always follow:

OPEN → WAIT FOR PULL → EDIT → COMMIT & SYNC

If you follow just this one rule, conflicts almost disappear.

---

# 12) Final Result

After setting up properly:

- Notes sync smoothly
    
- Attachments sync
    
- Plugins sync
    
- Layout files stay local
    
- Conflicts reduce drastically
    

Your Obsidian vault becomes stable across all devices.

---

# 13) Quick Recovery Checklist

If something breaks:

1. Close Obsidian
    
2. Open Git Bash in vault
    
3. Run:
    

```
git reset --hard origin/main
```

Reopen Obsidian.

Problem solved in most cases.

---

# Conclusion

Using Git with Obsidian is extremely powerful, especially for multi-device syncing. But Git requires a small amount of discipline:

- Always pull before editing
    
- Avoid syncing device-specific files
    
- Commit regularly
    

Once configured correctly, it becomes a reliable and professional sync system.

And the best part?

Your notes stay fully under your control.