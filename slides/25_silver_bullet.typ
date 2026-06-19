#import "../theme.typ": *

#objection(
  [TDD — серебряная пуля?],
  [Чистый код, всё работает, отличная архитектура, волосы будут длинные и шелковистые?],
)

#slide([Что TDD делает (и чего не делает)])[
  #two-cols(
    [
      #card([
        #text(size: 20pt, weight: "bold", fill: green)[ДА]
        #v(0.12in)
        #uncover("2-")[- Заставляет раньше анализировать задачу]
        #uncover("4-")[- Уменьшает петлю обратной связи]
        #uncover("6-")[- Даёт тестируемую архитектуру]
      ])
    ],
    [
      #card([
        #text(size: 20pt, weight: "bold", fill: red)[НЕТ]
        #v(0.12in)
        #uncover("3-")[- TDD не спасает от плохих требований]
        #uncover("5-")[- TDD не отменяет необходимость думать]
        #uncover("7-")[- TDD не гарантирует гениальную архитектуру]
      ])
    ],
  )
  #uncover("8-")[Даёт понятный алгоритм, как писать чистый код, который работает.]
]

#slide(
  [Неочевидные последствия практики],
  [
    #three-cols(
      // #text(size: 20pt, weight: "bold", fill: green)[GREEN]

      [
        #pause
        #card([#text(size: 20pt, weight: "bold", fill: yellow)[ОЦЕНКИ]
          #v(0.12in)
          Тесты начинают считаться частью задачи, а не хвостом после задачи.])
      ],
      [
        #pause
        #card([#text(size: 20pt, weight: "bold", fill: green)[ОТЛАДКА]
          #v(0.12in)
          Ошибки ловятся в коротком цикле, а не после длинной ручной отладки.])
      ],
      [
        #pause
        #card([#text(size: 20pt, weight: "bold", fill: red)[РИСК]
          #v(0.12in)
          Если идёшь не туда, теряешь минуты, а не несколько дней.])
      ],
    )
  ],
)

#objection(
  [Миф: TDD — это про тесты],
  [],
)

#thesis(
  [TDD — это про управление неопределённостью и рисками],
  [],
)

#slide(
  [Логика],
  [
    #card([
      Agile:

      #text(size: 30pt, weight: "bold", fill: green)[|]
      Получай обратную связь часто.
      #pause

      Scrum/XP:

      #text(size: 30pt, weight: "bold", fill: green)[|]
      Получай обратную связь каждую итерацию.
      #pause

      CI:

      #text(size: 30pt, weight: "bold", fill: green)[|]
      Получай обратную связь после каждого коммита.
      #pause

      TDD:

      #text(size: 30pt, weight: "bold", fill: green)[|]
      Получай обратную связь после #text(weight: "bold", fill: green)[каждой строчки кода].
    ])
  ],
)



