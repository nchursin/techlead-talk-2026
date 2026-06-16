#import "theme.typ": *

#show: with-theme

#touying-slide-wrapper(self => {
  touying-slide(self: self, [
    #place(top + left, dx: -0.55in, dy: -0.55in, image("assets/teamlead_slide_01.png", width: 13.333in, height: 7.5in))
    #place(top + left, dx: -0.149in, dy: -0.077in, block(width: 8.821in)[
      #text(size: 48pt, weight: "bold", fill: white)[Что такое TDD — мифы и реальность]
      // #v(0.25in)
      // #text(size: 24pt, fill: rgb("#AABBDD"))[И зачем оно в 2к26]
    ])
    #place(top + left, dx: -0.149in, dy: 3.623in, block(width: 8.821in)[
      #text(size: 24pt, fill: white)[Никита Чурсин]
    ])
  ])
})

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

#touying-slide-wrapper(self => {
  touying-slide(self: self, [
    #place(top + left, dx: -0.55in, dy: -0.55in, image("assets/teamlead_slide_13.png", width: 13.333in, height: 7.5in))
  ])
})
