default: build open

clean:
	rm -rf dist

watch-talk:
	typst watch --root . talk/main.typ presentation.pdf

watch-workshop:
	typst watch --root . workshop/main.typ presentation.pdf

build: clean
	mkdir dist/
	typst compile --root . talk/main.typ dist/talk.pdf
	typst compile --root . workshop/main.typ dist/workshop.pdf

open:
	open presentation.pdf
