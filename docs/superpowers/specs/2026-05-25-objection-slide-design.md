# Objection Slide Design

## Context

The presentation currently uses `#hero` for two semantically different purposes:
1. The title slide (opener)
2. Highlighting quotes/objections from imaginary (or real) opponents during the TDD debate

These should be visually distinct: a title slide signals "we're starting", while an objection slide signals "someone's pushing back".

## New Slide Type: `#objection`

### Visual Design

Identical signature to `#hero`:

```typst
#objection(title, subtitle)
```

Layout (top to bottom):

1. **Red bar** — `red` (`#FF5D73`), width 2.8in (same as hero bar but different color)
2. **Decorative quote mark** — `«`, ~60pt, bold, red (`red`), left-aligned
3. **Quote text** — `title`, 32pt, bold, `text-main` (white)
4. **Context** — `subtitle`, 18pt, `text-soft`
5. No page number (same as hero)

The quote mark and title form a visual block — small negative vertical space between them so they read as one unit, not two separate elements.

### Differentiation from `#hero`

| Element        | `#hero`       | `#objection`          |
|----------------|---------------|-----------------------|
| Bar color      | `accent-2` (teal) | `red` (`#FF5D73`) |
| Extra element  | none          | `«` 60pt in red       |
| Title          | 32pt bold     | 32pt bold             |
| Subtitle       | text-soft     | text-soft             |
| Page number    | none          | none                  |

### Implementation

- Add `#let objection(title, subtitle)` to `theme.typ`
- Replace `#hero(...)` calls in `main.typ` with `#objection(...)` for all body slides that are quotes/objections (not the title slide)

### Which slides become `#objection`

All `#hero` calls except the first one (the title slide):

- "С TDD придётся выбрасывать много кода..." (line 94)
- "Но это долго!" (line 162)
- "И как ты представляешь, чтобы я сел и продумал все тесты?" (line 282)
- "Ну допустим, но все вокруг продолжать писать как обычно..." (line 341)
- "Важность чистого кода" (line 359)
- "Где это всё может пригодится?" (line 378)
- "TDD - серебряная пуля?" (line 408)
