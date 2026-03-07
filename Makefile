all: page.pdf page2.pdf forreal.svg

page.pdf: page.svg
	cairosvg page.svg -f pdf -o page.pdf
# as of 2026-03-01T19:44:48-06:00 "page2.svg" is registration test bed file
page2.pdf: page2.svg
	cairosvg page2.svg -f pdf -o page2.pdf
forreal.svg: qrpage.xsl testout.xml
	xsltproc qrpage.xsl testout.xml > /dev/null
	xsltproc qrpage.xsl testout.xml > forreal.svg
	cairosvg forreal.svg -f pdf -o forreal.pdf
	cp forreal.svg /vboxsf/qr_code
	cp forreal.pdf /vboxsf/qr_code
