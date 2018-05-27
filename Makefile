NAME=dark_sun_rpg.pdf

DOCUMENTS=docs/dark_sun_rpg.tex
FILES=$(DOCUMENTS) lib/characters.sty lib/dice.sty lib/sections.sty lib/skill.sty lib/tables.sty

all: $(NAME)
show: clean $(NAME)
	xdg-open $(NAME)
$(NAME): $(FILES)
	lualatex $(DOCUMENTS)
clean: 
	rm -f  *.dvi  *.log  *.pdf *.toc
distclean: 
	rm -f  *.dvi  *.log  *.pdf *.toc
