#import "../../theme.typ": *

#slide(
  [Что TDD делает (и чего не делает)],
  [
    #two-cols(
      // #text(size: 20pt, weight: "bold", fill: green)[GREEN]
      [
        #card(
          [
            #text(size: 20pt, weight: "bold", fill: green)[ДА]
            #v(0.12in)
          ],
        )
      ],
      [
        #card(
          [
            #text(size: 20pt, weight: "bold", fill: red)[НЕТ]
            #v(0.12in)
          ],
        )
      ],
    )
  ],
)

#slide(
  [Что TDD делает (и чего не делает)],
  [
    #two-cols(
      [
        #card(
          [
            #text(size: 20pt, weight: "bold", fill: green)[ДА]
            #v(0.12in)
            - Заставляет раньше анализировать задачу
            - Уменьшает петлю обратной связи
            - Даёт надёжный инструмент проверки работоспособности кода
          ],
        )
      ],
      [
        #card(
          [
            #text(size: 20pt, weight: "bold", fill: red)[НЕТ]
            #v(0.12in)
            - TDD не гарантирует гениальную архитектуру
            - TDD не отменяет необходимость думать
            - TDD не спасает от плохих требований
          ],
        )
      ],
    )
  ],
)
