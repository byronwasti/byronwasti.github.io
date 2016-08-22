PD=pandoc
STYLE=style/main.css
SCRIPTS=scripts/overlay.js
CFLAGS=--template=html.template --section-divs --variable css=$(STYLE) --variable js=$(SCRIPTS) 
SRC=src/main.md

index:
	$(PD) -s $(SRC) -o index.html $(CFLAGS)
