#import "../../theme.typ": *
#import "@preview/fletcher:0.5.8": diagram, edge, node

#slide(
  [TDD: красный-зелёный-рефакторинг],
  [
    #three-cols(
      [#card(
        [#text(size: 20pt, weight: "bold", fill: red)[RED]
          #v(0.12in)
          Сначала пишем падающий тест.],
        fill-color: panel-soft,
      )],
      [#card(
        [#text(size: 20pt, weight: "bold", fill: green)[GREEN]
          #v(0.12in)
          Дальше делаем его зелёным так быстро, как можем.],
        fill-color: panel-soft,
      )],
      [#card(
        [#text(size: 20pt, weight: "bold", fill: yellow)[REFACTOR]
          #v(0.12in)
          Потом чистим дизайн под страховкой тестов.],
        fill-color: panel-soft,
      )],
    )
  ],
)

#slide(
  [TDD: циклы],
  [
    // spacing_y = spacing_x × √3 для равностороннего треугольника
    #let sx = 0.46in
    #let sy = 0.80in  // 0.46 × 1.732 ≈ 0.80
    #let ns(clr) = (fill: panel, stroke: (paint: clr, thickness: 2pt), radius: 0.22in)
    #let es = (paint: text-soft, thickness: 1.5pt)

    // R(top) → G(bottom-right) → R-yellow(bottom-left) → R(top)
    #let d1 = diagram(
      spacing: (sx, sy),
      node((1, 0), text(fill: red, weight: "bold", size: 18pt)[R], ..ns(red)),
      node((0, 1), [], fill: none, stroke: none, radius: 0.22in),
      node((2, 1), [], fill: none, stroke: none, radius: 0.22in),
    )
    #let d2 = diagram(
      spacing: (sx, sy),
      node((1, 0), text(fill: red, weight: "bold", size: 18pt)[R], ..ns(red)),
      node((2, 1), text(fill: green, weight: "bold", size: 18pt)[G], ..ns(green)),
      node((0, 1), [], fill: none, stroke: none, radius: 0.22in),
      edge((1, 0), (2, 1), "->", stroke: es),
    )
    #let d3 = diagram(
      spacing: (sx, sy),
      node((1, 0), text(fill: red, weight: "bold", size: 18pt)[R], ..ns(red)),
      node((2, 1), text(fill: green, weight: "bold", size: 18pt)[G], ..ns(green)),
      node((0, 1), text(fill: yellow, weight: "bold", size: 18pt)[R], ..ns(yellow)),
      edge((1, 0), (2, 1), "->", stroke: es),
      edge((2, 1), (0, 1), "->", stroke: es),
      edge((0, 1), (1, 0), "->", stroke: es),
    )

    #v(0.3in)
    #align(center)[
      #grid(
        columns: (1.7in, 2.1in, 2.1in, 2.5in),
        column-gutter: 0.3in,
        align: center + horizon,

        // Triangle 1: R → R+G → full, via #alternatives
        alternatives[#d1][#d2][#d3],

        // → + Triangle 2
        [
          #pause
          #grid(
            columns: (auto, 1.6in),
            column-gutter: 0.1in,
            align: center + horizon,
            text(size: 26pt, fill: text-soft)[→], d3,
          )
        ],

        // → + Triangle 3
        [
          #pause
          #grid(
            columns: (auto, 1.6in),
            column-gutter: 0.1in,
            align: center + horizon,
            text(size: 26pt, fill: text-soft)[→], d3,
          )
        ],

        // → + Final card
        [
          #pause
          #grid(
            columns: (auto, 1fr),
            column-gutter: 0.1in,
            align: center + horizon,
            text(size: 26pt, fill: text-soft)[→], d3,
          )
        ],
      )
    ]
  ],
)
