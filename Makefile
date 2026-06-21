default: build open

watch-talk:
	typst watch --root . talk/main.typ presentation.pdf

build:
	typst compile --root . talk/main.typ presentation.pdf

open:
	open presentation.pdf
