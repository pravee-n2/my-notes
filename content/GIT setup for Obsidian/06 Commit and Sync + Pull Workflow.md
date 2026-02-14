You DON’T have to manually press anything most of the time if you have enabled auto commit and sync.

---

# When DO you need to manually press “Commit & Sync”?

Only in these cases:

### 1️⃣ You want instant sync

Example:

- You edited on mobile
    
- Now going to open laptop immediately
    

Instead of waiting 10 min:

```
Tap → Commit & Sync
```

Done instantly.

---

### 2️⃣ Before closing Obsidian

Good habit:

Before closing app or shutting laptop:

```
Commit & Sync
```

So latest notes are safely pushed.

---

### 3️⃣ When switching devices quickly

Example:

- Edited on home laptop
    
- Leaving for office in 2 minutes
    

Just press:

```
Commit & Sync
```

So office laptop gets latest version.

---

# Think of it like WhatsApp

Auto sync = background sync  
Commit & Sync button = "Send Now"

---
# Best real-life workflow (simple)

### On laptop:

Just write normally.

Maybe once before closing:

```
Commit & Sync
```

### On mobile:

When you finish editing:

```
Commit & Sync
```

That’s enough.

---

# One VERY important rule (remember this)

❗ Never edit the SAME note on two devices at the same time.

Example BAD case:

- Laptop editing note
    
- Phone editing same note simultaneously
    

Git may create:

```
conflict copy
```

Just avoid parallel editing.

---
# Auto commit and Sync settings

![[Pasted image 20260214084955.png]]

Simply enable these two settings. Note, turn off this feature

`Pull on commit-and-sync. On commit-and-sync, pull commits as well. Turning this off turns a commit-and-sync action into commit and push only.`

Reason, when you git auto commits and sync, it only pushes the data for the time being and we have already turned on `Pull on startup`, hence load will be reduced.

