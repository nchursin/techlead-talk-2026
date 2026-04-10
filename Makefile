default: build open

watch:
	typst watch main.typ presentation.pdf

build:
	typst compile main.typ presentation.pdf

open:
	open presentation.pdf
