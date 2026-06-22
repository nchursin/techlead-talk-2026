#import "../../theme.typ": *

#import "@preview/fletcher:0.5.8": diagram, edge, node

#thesis(
  [Бывало ли вам страшно сломать код?],
  [],
)

#thesis(
  [Что значит «сломать» код?],
  [],
)

#thesis(
  [Как убеждаться, что код соответствует требованиям, не «сломан»?],
  [],
)

#thesis(
  [Если тесты есть, почему всё равно бывает страшно?],
  [],
)

#slide(
  [Тесты после кода работают хуже],
  [
    #card([
      - Работа уже выглядит сделанной, а о будущем не думаем
      - «Сюда никогда не передадут nil»
      - Мы любим свой код и не хотим его ломать
    ])
  ],
)

#thesis(
  [Если тесты есть, почему всё равно бывает страшно?],
  [],
)

#slide(
  [Как выглядит процесс разработки?],
  [
    #let bitem(icon, label) = grid(
      columns: (0.35in, 1fr),
      column-gutter: 0.15in,
      align: horizon,
      text(size: 20pt)[#icon], text(size: 20pt, label),
    )

    #card([
      #uncover("5-")[#bitem([📋], [Собираем требования])]
      #v(0.08in)
      #uncover("6-")[#bitem([🔍], [Анализируем требования])]
      #v(0.08in)
      #uncover("2-")[#bitem([💻], [Пишем код])]
      #v(0.08in)
      #uncover("3-")[#bitem([🧪], [Пишем тесты])]
      #v(0.08in)
      #uncover("4-")[#bitem([🚀], [Выкатываемся])]
    ])
    #uncover("7-")[#text(weight: "bold")[ Разработка начинается с требований. ]]
  ],
)

#thesis(
  [С требований начинаются тесты.],
  [],
)

#slide(
  [TDD: начни со списка тестов],
  [
    #card([
      #text(size: 20pt)[
        #pause
        - Разбиваем требование на несколько более мелких
        #v(0.08in)
        #pause
        - Готовим примеры для каждого пункта
        #v(0.08in)
        #pause
        - Составляем список
        #v(0.08in)
        #pause
        - Выбираем самый простой для проверки кейс и автоматизируем его
      ]
    ])
  ],
)

#thesis(
  [Выбираем самый простой тест — и автоматизируем!],
  [],
)

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

#slide(
  [Правила TDD],
  [
    #let rule-icon(body, clr) = block(
      fill: clr,
      radius: 18pt,
      width: 0.65in,
      height: 0.65in,
    )[
      #place(center + horizon, dy: -0.05in)[
        #text(size: 34pt, top-edge: "bounds", bottom-edge: "bounds")[#body]
      ]
    ]

    #let rule-row(icon, label) = grid(
      columns: (0.7in, 1fr),
      column-gutter: 0.3in,
      align: horizon,
      icon, text(size: 22pt, weight: "bold", label),
    )

    #card(
      [
        #text(size: 24pt, weight: "bold")[TDD — это про дисциплину!]
      ],
      fill-color: panel-soft,
    )
    #pause

    #v(0.2in)
    #rule-row(rule-icon([🪲], red), [Пишем минимальный тест, необходимый для падения. Ошибки компиляции считаются])
    #v(0.15in)
    #pause
    #rule-row(rule-icon([✅], green), [Не пишем больше кода, чем нужно для прохождения теста])
    #v(0.15in)
    #pause
    #rule-row(rule-icon([🔨], yellow), [Заботимся о дизайне])
  ],
)

#thesis(
  [Посмотрим на пример],
  [],
)

#slide(
  [Ката: Банковский счёт],
  [
    #card([
      #text(size: 20pt)[
        Требования
        - Я могу положить деньги на счёт
        - Я могу снять деньги со счёта
        - Я могу получить выписку со счёта (дата + баланс)
        - Я могу переводить деньги со счёта на счёт
        - Я могу вывести историю операций по счёту
      ]
    ])
  ],
)

// #slide(
//   [Пример],
//   [
//     #card([
//       #align(center)[
//         #image("../assets/multi-currency-report.png")
//       ]
//       #text(size: 20pt)[
//         Тесты:
//         #pause
//         - 5 USD \* 2 = 10 USD
//         #pause
//         - 5 USD + 10 CHF = 10 USD, при курсе 1:2
//       ]
//     ])
//   ],
// )

#thesis(
  [Демо],
  [],
)

#thesis(
  [Сейчас будем кодить.],
  [Но сначала...],
)

#slide(
  [Работа в парах],
  [
    #two-cols(
      [#card([
        #text(size: 16pt)[
          - 2 роли: драйвер и навигатор
          #pause
          - Драйвер пишет код — управляет клавиатурой
          #pause
          - Навигатор управляет списком тестов и подсказывает драйверу
          #pause
          - Меняемся после каждого красного теста:
            #pause
            1. Драйвер пишет красный тест
            #pause
            2. Перемена мест!
            #pause
            3. Новый драйвер озеленяет и рефакторит
            #pause
            3. GOTO 1
        ]
      ])],
      [
        #uncover("0-")[#card([
          #align(center)[
            #image("../assets/drivernavigator.png", height: 2.6in)
          ]
        ])]
      ],
    )
  ],
  kicker: [Миф: TDD — это долго, а нам некогда, надо фичи пилить],
)

#slide(
  [Ката: Бановский счёт],
  [
    #two-cols(
      [
        #card([
          #text(size: 20pt)[
            Требования
            - Я могу положить деньги на счёт
            #text(fill: gray)[
              - Я могу снять деньги со счёта
              - Я могу получить выписку со счёта (дата + баланс)
              - Я могу переводить деньги со счёта на счёт
              - Я могу вывести историю операций по счёту
            ]
          ]
        ])
      ],
      [
        #card([
          #text(size: 20pt)[
            Задача:
            - Составить начальный список тестов
            - Разработать 2 теста с кодом
          ]
        ])
      ],
    )
    *Работаем 15 мин*
  ],
)

#thesis(
  [Кто хочет поделиться?],
  [Какие сложности вознилки? Хотелось ли написать больше кода, чм нужно?],
)
