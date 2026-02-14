### 🚨 Key Learning

Quartz does NOT treat folders like Windows Explorer.

A folder will only appear properly on the website if it contains:

```
index.md
```

If a folder has only notes but no `index.md`, Quartz will still generate individual pages, but:

- The folder won’t have a proper landing page
    
- Navigation may feel incomplete
    
- Ordering control won’t work correctly
    

---

## 📌 Why index.md is Important

`index.md` acts as the **main page for that folder**.

Think of it like:

- Folder = Chapter
    
- index.md = Chapter title page
    
- Other notes = Topics inside the chapter
    

Without `index.md`:

- Quartz lists files
    
- But the folder itself has no identity page
    

---

## 🛠 Minimum Required index.md

Create this file inside every folder:

```
content/Your-Folder/index.md
```

Basic version:

```
# Folder Name

Notes related to this section.
```

---

## ⚙️ Useful Properties of index.md

You can control folder behavior using frontmatter at the top:

```
---
sort: alphabetical
---
```

### Common options:

**Sort notes by filename (best for numbered tutorials):**

```
---
sort: alphabetical
---
```

**Sort by title:**

```
---
sort: title
---
```

**Default (if nothing set):**

- Quartz sorts by last modified date
    

---

## 🥇 Recommended Structure

```
content/
 ├─ index.md
 ├─ GIT setup for Obsidian/
 │   ├─ index.md   ← important
 │   ├─ 01 ...
 │   ├─ 02 ...
 │   └─ 03 ...
```

This gives:

- Clean navigation
    
- Proper folder landing page
    
- Correct ordering control
    

---

## 🧠 Rule to Remember

Whenever you create a new folder inside `content/`:

➡ Always create an `index.md` inside it.