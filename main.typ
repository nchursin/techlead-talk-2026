#import "theme.typ": *

#show: with-theme

#hero(
  [Разрушители мифов: TDD],
  [Что такое TDD на самом деле и зачем оно в 2к26],
)

#include "slides/00_intro.typ"
#include "slides/01_story_myth.typ"
#include "slides/02_first_myth.typ"
#include "slides/03_takes_long.typ"
#include "slides/04_tdd_loop.typ"
#include "slides/05_tdd_is_do_all_tests.typ"
#include "slides/10_tdd_is_unit_testing.typ"
#include "slides/20_llm.typ"
#include "slides/25_silver_bullet.typ"

#slide(
  [Завтра продолжим],
  [
    #card([
      #text(size: 24pt, weight: "bold", fill: accent-2)[Будь как Дима, приходи на воркшоп.]
      #v(0.22in)
      На практике посмотрим, как это работает — пройдёмся руками, а потом с LLM.
    ])
  ],
)
