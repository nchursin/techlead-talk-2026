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
