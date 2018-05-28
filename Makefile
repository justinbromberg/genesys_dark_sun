NAME=dark_sun_rpg.pdf

DOCUMENTS=docs/dark_sun_rpg.tex
FILES=$(DOCUMENTS) ds.sty chapters/* docs/* lib/* races/*

all: $(NAME)
show: clean $(NAME)
	xdg-open $(NAME)
$(NAME): $(FILES)
	lualatex $(DOCUMENTS)
clean: 
	rm -f  *.dvi  *.log  *.pdf *.toc
distclean: 
	rm -f  *.dvi  *.log  *.pdf *.toc
