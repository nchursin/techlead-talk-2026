#let with-theme(body) = {
  set page(
    width: 13.333in,
    height: 7.5in,
    margin: 0.55in,
    fill: rgb("#0B1020"),
  )

  set text(font: ("Arial", "Helvetica Neue"), fill: rgb("#F3F7FF"), size: 18pt)
  set par(justify: false, leading: 0.65em)

  body
}

#let bg = rgb("#0B1020")
#let panel = rgb("#121A31")
#let panel-soft = rgb("#19233F")
#let text-main = rgb("#F3F7FF")
#let text-soft = rgb("#AAB6D3")
#let accent = rgb("#7C5CFF")
#let accent-2 = rgb("#35D0BA")
#let red = rgb("#FF5D73")
#let green = rgb("#5EDC9B")
#let yellow = rgb("#FFC857")

#let bar(fill-color, width: 100%, height: 0.18in) = block(
  width: width,
  height: height,
  fill: fill-color,
  radius: 999pt,
)[ ]

#let card(body, fill-color: panel, inset-size: 18pt, radius-size: 16pt) = block(
  width: 100%,
  fill: fill-color,
  inset: inset-size,
  radius: radius-size,
)[#body]

#let label-chip(body, fill-color: panel-soft, text-color: accent-2) = block(
  fill: fill-color,
  inset: (x: 12pt, y: 6pt),
  radius: 999pt,
)[#text(size: 11pt, weight: "bold", fill: text-color)[#body]]

#let slide(title, body, kicker: none) = [
  #bar(accent)
  #v(0.22in)
  #if kicker != none [
    #label-chip(kicker)
    #v(0.15in)
  ]
  #text(size: 25pt, weight: "bold", fill: text-main)[#title]
  #v(0.22in)
  #body
  #v(1fr)
  #align(right)[
    #text(size: 12pt, fill: text-soft)[#context counter(page).display()]
  ]
  #pagebreak(weak: true)
]

#let cheatsheet(title, body) = [
  #bar(yellow)
  #v(0.22in)
  #label-chip([Шпаргалка], fill-color: panel-soft, text-color: yellow)
  #v(0.15in)
  #text(size: 25pt, weight: "bold", fill: yellow)[#title]
  #v(0.22in)
  #body
  #v(1fr)
  #align(right)[
    #text(size: 12pt, fill: text-soft)[#context counter(page).display()]
  ]
  #pagebreak(weak: true)
]

#let hero(title, subtitle, meta: none) = [
  #bar(accent-2, width: 2.8in)
  #v(0.5in)
  #text(size: 32pt, weight: "bold", fill: text-main)[#title]
  #v(0.16in)
  #text(size: 18pt, fill: text-soft)[#subtitle]
  #v(0.55in)
  #if meta != none [
    #card(meta, fill-color: panel)
  ]
  #pagebreak(weak: true)
]

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

#let thesis(title, subtitle) = [
  #bar(green, width: 2.8in)
  #v(0.3in)
  #text(size: 60pt, weight: "bold", fill: green)[→]
  #v(-0.15in)
  #text(size: 32pt, weight: "bold", fill: text-main)[#title]
  #v(0.16in)
  #text(size: 18pt, fill: text-soft)[#subtitle]
  #pagebreak(weak: true)
]

#let two-cols(left, right) = grid(
  columns: (1fr, 1fr),
  gutter: 0.28in,
  [#left], [#right],
)

#let three-cols(a, b, c) = grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.22in,
  [#a], [#b], [#c],
)

#let quote-line(body) = text(size: 20pt, weight: "bold", fill: accent-2)[#body]

#let progressive-row(body, hidden: false) = grid(
  columns: (0.9em, 1fr),
  gutter: 0.05em,
  [#if not hidden [•]], [#if hidden { hide(body) } else { body }],
)

#let progressive-slide(title, items, kicker: none) = {
  for visible in range(0, items.len() + 1) {
    slide(
      title,
      [
        #card([
          #stack(
            spacing: 0.6em,
            ..items
              .enumerate()
              .map(((index, item)) => {
                progressive-row(item, hidden: index >= visible)
              }),
          )
        ])
      ],
      kicker: kicker,
    )
  }
}
