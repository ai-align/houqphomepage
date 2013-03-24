all: html

pdf: html
	wkhtmltopdf -s a4 cv.html cv-houqp.pdf

html:cv.haml
	haml cv.haml cv.html
	haml cv-security.haml cv-sec.html

clean:
	rm -rf cv.html

.PHONY: all clean

