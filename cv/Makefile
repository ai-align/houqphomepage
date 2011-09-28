.PHONY:all clean 

CV=cv_houqp
CV_TEMPLATE=cv_template
CV_SOURCE=../content/pages/cv.rst

all: install_pdf

install_pdf:cv_pdf
	cp $(CV).pdf ../content/download/

cv_pdf:cv_tex
	pdflatex $(CV).tex

cv_dvi:cv_tex
	latex $(CV).tex

cv_tex:$(CV_TEMPLATE).tex $(CV_SOURCE)
	rst2latex.py --template=$(CV_TEMPLATE).tex $(CV_SOURCE) > $(CV).tex

clean:
	rm -rf $(CV).tex $(CV).dvi $(CV).pdf *.aux *.log *.out
