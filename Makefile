default: build open

clean:
	rm -rf dist

watch-talk:
	typst watch --root . talk/main.typ presentation.pdf

watch-workshop:
	typst watch --root . workshop/main.typ presentation.pdf

build: clean
	mkdir dist/
	typst compile --root . talk/main.typ "dist/Что такое TDD — мифы и реальность.pdf"
	typst compile --root . workshop/main.typ "dist/Воркшоп «Разработка без страха — через тестирование».pdf"

open:
	open presentation.pdf
