.PHONY:all clean push test

all:make_cv generate_site

generate_site:houqp.me appengine

make_cv:
	#cd cv && make
	cd cv-html && make

houqp.me:content/* scholar/*
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	sed -e s@qingping-hou.appspot.com@about.houqp.me@ tmp_pelican.conf.py > tmp1_pelican.conf.py
	pelican -s ./tmp1_pelican.conf.py -o houqp.me content
	rm -rf tmp*
	cp -rv content/download houqp.me/
	#git add houqp.me


appengine:content/* scholar/*
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	pelican -s ./tmp_pelican.conf.py -o appengine content
	rm -rf tmp*
	cp -rv content/download appengine/
	#git add appengine

test:content/*
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	sed -e s@qingping-hou.appspot.com@localhost:8000@ tmp_pelican.conf.py > tmp1_pelican.conf.py
	pelican -s ./tmp1_pelican.conf.py content
	rm -rf tmp*

push:
	git push

clean:
	rm -rf output appengine houqp.me houqp.com
	cd cv && make clean
	cd cv-html && make clean
