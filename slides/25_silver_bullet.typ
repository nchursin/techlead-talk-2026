#import "../theme.typ": *

#objection(
  [TDD - серебряная пуля?],
  [Чистый код, всё работает, отличная архитектура, волосы будут длинные и шелковистые?],
)

#slide-two-cols(
  [Что TDD делает (и чего не делает)],
  [
    #card([
      #text(size: 20pt, weight: "bold", fill: green)[ДА]
      #v(0.12in)
      // #pause
      #uncover("2-")[- Заставляет раньше анализировать задачу]
      #uncover("4-")[- Уменьшает петлю обратной связи]
      #uncover("6-")[- Даёт тестируемую архитектуру]
    ])
  ],
  [
    #card([
      #text(size: 20pt, weight: "bold", fill: red)[НЕТ]
      #v(0.12in)
      #uncover("7-")[- TDD не спасает от плохих требований]
      #uncover("5-")[- TDD не отменяет необходимость думать]
      #uncover("3-")[- TDD не гарантирует гениальную архитектуру]
    ])
  ],
)

#slide(
  [Неочевидные последствия практики],
  [
    #three-cols(
      [],
      [],
      [],
    )
  ],
)

#slide(
  [Неочевидные последствия практики],
  [
    #three-cols(
      // #text(size: 20pt, weight: "bold", fill: green)[GREEN]
      [#card([#text(size: 20pt, weight: "bold", fill: yellow)[ОЦЕНКИ]
        #v(0.12in)
        Тесты начинают считаться частью задачи, а не хвостом после задачи.])],
      [],
      [],
    )
  ],
)

#slide(
  [Неочевидные последствия практики],
  [
    #three-cols(
      // #text(size: 20pt, weight: "bold", fill: green)[GREEN]
      [#card([#text(size: 20pt, weight: "bold", fill: yellow)[ОЦЕНКИ]
        #v(0.12in)
        Тесты начинают считаться частью задачи, а не хвостом после задачи.])],
      [#card([#text(size: 20pt, weight: "bold", fill: green)[ОТЛАДКА]
        #v(0.12in)
        Ошибки ловятся в коротком цикле, а не после длинной ручной отладки.])],
      [],
    )
  ],
)

#slide(
  [Неочевидные последствия практики],
  [
    #three-cols(
      // #text(size: 20pt, weight: "bold", fill: green)[GREEN]
      [#card([#text(size: 20pt, weight: "bold", fill: yellow)[ОЦЕНКИ]
        #v(0.12in)
        Тесты начинают считаться частью задачи, а не хвостом после задачи.])],
      [#card([#text(size: 20pt, weight: "bold", fill: green)[ОТЛАДКА]
        #v(0.12in)
        Ошибки ловятся в коротком цикле, а не после длинной ручной отладки.])],
      [#card([#text(size: 20pt, weight: "bold", fill: red)[РИСК]
        #v(0.12in)
        Если идёшь не туда, теряешь минуты, а не несколько дней.])],
    )
  ],
)
