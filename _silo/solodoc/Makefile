# Makefile for Solo documentation (solodoc)

CSS=default.css
CSS=pandoc.css

INSTALL = index.html index.txt faq.txt usermanual.txt faq.html usermanual.html faq-nocss.html default.css pandoc.css hardware-clock.html assembly-guide-usbmic.txt assembly-guide-usbmic.html

DEST 	= jdmc2.com:websites/jdmc2.com/solo/doc/

default:	index.html faq.html usermanual.html faq-nocss.html hardware-clock.html assembly-guide-usbmic.html

index.html: index.txt pandoc.css Makefile
	pandoc -S -s --toc -c $(CSS) index.txt -o index.html

faq-nocss.html:	faq.txt pandoc.css Makefile
	pandoc -S -s --toc faq.txt -o faq-nocss.html

faq.html: faq.txt pandoc.css Makefile
#	pandoc -s --toc -c pandoc.css -A footer.html faq.txt -o faq.html
	pandoc -S -s --toc -c $(CSS)  faq.txt -o faq.html
#	pandoc -S -s --toc faq.txt -o faq.html
#	pandoc -s --toc -c pandoc.css faq.txt -o faq.html

usermanual.html: usermanual.txt pandoc.css Makefile
#	pandoc -s --toc -c default.css usermanual.txt -o usermanual.html
	pandoc -S -s --toc -c $(CSS) usermanual.txt -o usermanual.html

hardware-clock.html: hardware-clock.txt pandoc.css Makefile
	pandoc -S -s --toc -c $(CSS) hardware-clock.txt -o hardware-clock.html

assembly-guide-usbmic.html: assembly-guide-usbmic.txt Makefile pandoc.css
	pandoc -S -s --toc -c $(CSS) $< -o $@

clean:	
	rm -f faq.html usermanual.html faq-nocss.html hardware-clock.html index.html assembly-guide-usbmic.html

install:	default
	scp ${INSTALL} ${DEST}
