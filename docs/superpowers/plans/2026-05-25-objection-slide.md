# Objection Slide Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a new `#objection` slide type to the presentation that visually signals "this is a quote from an opponent" via a red accent bar and decorative quote mark.

**Architecture:** Add one new function `#objection(title, subtitle)` to `theme.typ` alongside the existing `#hero`. Then replace the appropriate `#hero` calls in `main.typ` with `#objection` — the title slide stays as `#hero`.

**Tech Stack:** Typst. Build: `make build` (runs `typst compile main.typ presentation.pdf`). Open result: `make open`.

---

### Task 1: Add `#objection` to theme.typ

**Files:**
- Modify: `theme.typ` (after the `#hero` function, around line 74)

- [ ] **Step 1: Add the function after `#hero`**

In `theme.typ`, after the closing `]` of `#hero` (line 74), add:

```typst
#let objection(title, subtitle) = [
  #bar(red, width: 2.8in)
  #v(0.3in)
  #text(size: 60pt, weight: "bold", fill: red)[«]
  #v(-0.15in)
  #text(size: 32pt, weight: "bold", fill: text-main)[#title]
  #v(0.16in)
  #text(size: 18pt, fill: text-soft)[#subtitle]
  #pagebreak(weak: true)
]
```

- [ ] **Step 2: Compile and check it builds**

```bash
make build
```

Expected: exits without errors, `presentation.pdf` updated. If there's a Typst error, fix syntax before continuing.

- [ ] **Step 3: Commit**

```bash
git add theme.typ
git commit -m "feat: add objection slide type with red accent and quote mark"
```

---

### Task 2: Replace `#hero` with `#objection` in main.typ

The title slide (line 4) stays as `#hero`. All other `#hero` calls become `#objection`.

**Files:**
- Modify: `main.typ`

- [ ] **Step 1: Replace the 7 body hero calls**

Replace each of these (leave line 4 untouched):

| Line | Old call | New call |
|------|----------|----------|
| 94 | `#hero(` | `#objection(` |
| 162 | `#hero(` | `#objection(` |
| 282 | `#hero(` | `#objection(` |
| 341 | `#hero(` | `#objection(` |
| 359 | `#hero(` | `#objection(` |
| 378 | `#hero(` | `#objection(` |
| 408 | `#hero(` | `#objection(` |

Only change `#hero(` → `#objection(`. Arguments stay identical.

- [ ] **Step 2: Compile and visually inspect**

```bash
make build && make open
```

Check:
- Title slide (page 1) — bирюзовая полоска, без кавычек ✓
- First objection slide ("С TDD придётся выбрасывать много кода...") — красная полоска, `«` над текстом ✓
- Убедись, что кавычка и заголовок читаются как единый блок, а не два отдельных элемента

If the quote mark and title look too far apart, adjust the `#v(-0.15in)` in `theme.typ` — make it more negative (e.g. `-0.25in`) to pull them closer.

- [ ] **Step 3: Commit**

```bash
git add main.typ
git commit -m "feat: use objection slide for all in-body hero quotes"
```
