#import "../theme.typ": *

#show: with-theme

#touying-slide-wrapper(self => {
  touying-slide(self: self, [
    #place(top + left, dx: -0.55in, dy: -0.55in, image("assets/teamlead_slide_01.png", width: 13.333in, height: 7.5in))
    #place(top + left, dx: -0.149in, dy: 0.077in, block(width: 8.821in)[
      #text(size: 48pt, weight: "bold", fill: white)[Разработка без страха — через тестирование]
    ])
    #place(top + left, dx: -0.149in, dy: 3.623in, block(width: 8.821in)[
      #text(size: 24pt, fill: white)[Никита Чурсин, Ozon Банк]
    ])
  ])
})

#include "slides/00_intro.typ"
#include "slides/01_getting_started.typ"

#touying-slide-wrapper(self => {
  touying-slide(self: self, [
    #place(top + left, dx: -0.55in, dy: -0.55in, image("assets/teamlead_slide_13.png", width: 13.333in, height: 7.5in))
    #place(top + left, dx: -0.149in, dy: 2.077in, block(width: 8.821in)[
      #text(size: 48pt, weight: "bold", fill: white)[Чистого кода, который работает!]
    ])
  ])
})
