#import "../../theme.typ": *

#question(
  [Стало ли TDD понятней?],
  [Будете ли применять?],
)

#slide(
  [Теперь ты знаешь, что такое TDD!],
  [#card([
    #text(size: 20pt)[
      #pause
      - TDD отталкивается от требований
        #pause
      - Составляешь список тестов
        #pause
      - Идёшь по циклу #text(fill: red)[Красный]-#text(fill: green)[Зелёный]-#text(fill: yellow)[Рефакторинг]
        #pause
      - Дополняешь список тестов, если придумал что-то новое
        #pause
      - TDD помогает держать LLM в узде
    ]
  ])],
)

#slide(
  [Ещё по теме],
  [#card([
    #text(size: 20pt)[
      - Кент Бек, «Экстремальное программирование. Разработка через тестирование» («TDD by example»)
      - Канал Кента Бека на Youtube
      - TCR (test-commit-revert)
      - Clean Coder Blog (дядя Боб Мартин)
    ]
  ])],
)
