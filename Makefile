all: page.pdf page2.pdf

page.pdf: page.svg
	cairosvg page.svg -f pdf -o page.pdf
# as of 2026-03-01T19:44:48-06:00 "page2.svg" is registration test bed file
page2.pdf: page2.svg
	cairosvg page2.svg -f pdf -o page2.pdf
