all: build/corsika19.tex


texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/corsika19.tex: FORCE | build
	latexmk $(texoptions) corsika19.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc corsika19.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
