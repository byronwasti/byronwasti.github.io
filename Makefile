PD=pandoc
STYLE=style/main.css
FONTS=https://fonts.googleapis.com/css?family=Raleway:100,200
FONTS2=https://fonts.googleapis.com/css?family=Lato:300
FONTS3=https://fonts.googleapis.com/css?family=Roboto:100,400

SCRIPTS=scripts/overlay.js
CFLAGS=--template=html.template --section-divs --variable css=$(STYLE) --variable css=$(FONTS) --variable css=$(FONTS2) --variable css=$(FONTS3) --variable js=$(SCRIPTS) 
SRC=src/main.md

index.html: $(SRC)
	$(PD) -s $(SRC) -o $@ $(CFLAGS)
