#import "../theme.typ": *

#objection(
  [И как ты представляешь, чтобы я сел и продумал все тесты?],
  [Я ж не знаю, как у меня получится в итоге. Как я могу все тесты заранее написать?],
)

#thesis(
  [Я пробовал!],
  [И получилась полная фигня...],
)

#slide(
  [Маленькие шаги],
  [
  ],
  kicker: [Миф: TDD — значит написать все тесты сразу],
)

#slide(
  [Маленькие шаги],
  [
    #three-cols(
      [#card(
        [#text(size: 20pt, weight: "bold", fill: red)[RED]
          #v(0.12in)
          Сначала пишем падающий тест.],
        fill-color: panel-soft,
      )],
      [],
      [],
    )
  ],
  kicker: [Миф: TDD — значит написать все тесты сразу],
)

#slide(
  [Маленькие шаги],
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
      [],
    )
  ],
  kicker: [Миф: TDD — значит написать все тесты сразу],
)

#slide(
  [Маленькие шаги],
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
  kicker: [Миф: TDD — значит написать все тесты сразу],
)

#slide(
  [Эх раз, ещё раз...],
  [
    #card([
      #text(size: 20pt)[
        тут будет визуализация
      ]
    ])
  ],
  kicker: [Миф: TDD — значит написать все тесты сразу],
)

#slide(
  [Эх раз, ещё раз...],
  [
    #card([
      #text(size: 20pt)[
        - Разработка состоит из маленьких циклов TDD
        - Супер-короткая петля обратной связи - минуты и секунды, не дни
        - Код тестируемый
        - Код работает, за счёт непрерывного тестирования
        - Код чистый, за счёт непрерывного рефакторинга
      ]
    ])
  ],
)

#cheatsheet(
  [Как делать TDD],
  [
    #card([
      #text(size: 20pt)[
        1. Составь список примеров, с которых планируешь начать
        2. Начинаем идти по списку тестов циклом TDD: #text(fill: red)[RED]-#text(fill: green)[GREEN]-#text(fill: yellow)[REFACTOR]
      ]
    ])
  ],
)
