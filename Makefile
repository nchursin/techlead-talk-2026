default: build open

watch-talk:
	typst watch --root . talk/main.typ presentation.pdf

watch-workshop:
	typst watch --root . workshop/main.typ presentation.pdf

build:
	typst compile --root . talk/main.typ talk.pdf
	typst compile --root . workshop/main.typ workshop.pdf

open:
	open presentation.pdf
