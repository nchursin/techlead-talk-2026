#import "../../theme.typ": *
#import "@preview/fletcher:0.5.8": diagram, edge, node

#slide(
  [Как выглядит разработка через тесты],
  [
    #card([#text(size: 20pt)[
      #pause
      - Разбиваем требование на несколько более мелких
      #pause
      - Составляем список тестов
      #pause
      - Начинаем идти по циклу TDD (красный-зелёный-рефакторинг)
      #pause
      - Если в голову пришла гениальная идея — вносим в список тестов
    ]])
  ],
)

#slide(
  [Почему так?],
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
        #text(size: 24pt, weight: "bold")[TDD — это делать одну вещь за раз.]
      ],
      fill-color: panel-soft,
    )
    #pause

    #v(0.2in)
    #rule-row(rule-icon([🪲], red), [Фокусируемся на одном требовании за раз])
    #v(0.15in)
    #pause
    #rule-row(rule-icon([✅], green), [Фокусируемся на том, чтобы тест прошёл])
    #v(0.15in)
    #pause
    #rule-row(rule-icon([🔨], yellow), [Фокусируемся на дизайне])
  ],
)

#thesis(
  [О рефакторинге говорить будем],
  [],
)

#thesis(
  [У кого amount/balance публичный?],
  [],
)

#slide(
  [Поговорим о рефакторинге],
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
        #text(size: 24pt, weight: "bold")[TDD — не механический процесс.]
      ],
      fill-color: panel-soft,
    )
    #pause

    #v(0.2in)
    #rule-row(rule-icon([🪲], red), [Цель TDD — получить чистый код, который работает.])
    #v(0.15in)
    #pause
    #rule-row(
      rule-icon([✅], green),
      [В конце каждого этапа: остановитесь и задайте себе и друг другу несколько вопросов.],
    )
    #v(0.15in)
    #pause
    #rule-row(rule-icon([🔨], yellow), [Что вы собираетесь делать дальше и какие изменения вы бы хотели внести в код?])
  ],
)

#slide(
  [После того, как видишь #text(fill: red)[красный] тест],
  [
    #card([
      #text(size: 20pt)[
        - Как сделать тест зелёным быстрее всего?
      ]
    ])
  ],
)

#slide(
  [После того, как видишь #text(fill: green)[зелёный] тест],
  [
    #card([
      #text(size: 20pt)[
        - Какой рефакторинг нужен?
        - Как рефакторинг можно сделать сейчас?
        - Какой рефакторинг добавить в список тестов?
      ]
    ])
  ],
)

#slide(
  [После #text(fill: green)[рефакторинга]],
  [
    #card([
      #text(size: 20pt)[
        - Какой ещё рефакторинг можно применить?
        - Чем заняться в следующем цикле: рефакторингом или наращиванием функционала?
      ]
    ])
  ],
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
              - Я могу снять деньги со счёта
              - Я могу получить выписку со счёта (дата + баланс)
            #text(fill: gray)[
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
            - Продолжаем писать код
            - Сделайте Amount приватным
            - Подумайте над дизайном
          ]
        ])
      ],
    )
    *Работаем 20 мин*
  ],
)

#thesis(
  [Кто хочет поделиться?],
  [Удалось ли сделать amount/balance приватным? Как помогают тесты в рефакторинге?],
)
