#import "../../theme.typ": *

#slide(
  [Это я],
  [
    #block(breakable: false)[
      #grid(
        columns: (2.75in, 1fr),
        gutter: 0.24in,
        align(top)[
          #block(
            width: 2.75in,
            height: 3.8in,
            radius: 22pt,
            clip: true,
            stroke: accent,
          )[
            #image(
              "../assets/me.jpg",
              width: 100%,
              height: 100%,
              fit: "cover",
              alt: "Я",
            )
          ]
        ],
        [
          #card(
            [
              #text(size: 16pt, fill: text-soft)[Тимлид, Озон Банк]
              - В разработке с 2013
              - Пишу код через тесты и люблю парную работу
              - Заставил немецких банкиров писать авто-тесты
              - Провожу код-ритриты и инженерные тренинги
              - Член программного комитета DUMP и TechLead Conf
              #v(0.14in)
              #text(size: 15pt, fill: text-soft)[А ещё вожу Mausritter — настольную ролевуху про мышей!]
            ],
            inset-size: 16pt,
          )
        ],
      )
    ]
  ],
)

#slide(
  [Что сегодня делаем?],
  [
    #v(0.14in)
    #card(
      [
        #text(fill: green, weight: "bold")[Цель на воркшоп]:

        Познакомиться с техникой TDD и попробовать написать код через тесты
      ],
      fill-color: panel-soft,
    )
    #pause
    #card([
      #text(size: 24pt)[
        - С чего начинается TDD?
        #pause
        - Пишем через тесты.
        #pause
        - Укрощяем AI через TDD.
      ]
    ])
  ],
)


#slide(
  [Организационные моменты],
  [
    #let org-icon(body) = block(
      fill: green,
      radius: 20pt,
      width: 1.1in,
      height: 1.1in,
    )[
      #place(center + horizon, dy: -0.05in)[
        #text(size: 40pt, top-edge: "bounds", bottom-edge: "bounds")[#body]
      ]
    ]

    #v(0.5in)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      gutter: 0.2in,
      align: center,
      [
        #org-icon[⏱]
        #v(0.3in)
        #set text(size: 20pt, weight: "bold")
        Работаем 2 часа. \
        Перерыв будет!
      ],
      [
        #org-icon[😊]
        #v(0.3in)
        #set text(size: 20pt, weight: "bold")
        Правило \
        Ивана Дорна
      ],
      [
        #org-icon[📝]
        #v(0.3in)
        #set text(size: 20pt, weight: "bold")
        Фиксируем \
        кличевые \
        моменты
      ],
      [
        #org-icon[
          #image("../assets/dino.png", width: 1.0in)
        ]
        #v(0.3in)
        #set text(size: 20pt, weight: "bold")
        Презентацию \
        дам, запись я \
        не дам
      ],
    )
  ],
)
