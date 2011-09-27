.PHONY:all clean push test

all:test

generate:houqp.me appengine

houqp.me:content/*
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	sed -e s@qingping-hou.appspot.com@about.houqp.me@ tmp_pelican.conf.py > tmp1_pelican.conf.py
	pelican -s ./tmp1_pelican.conf.py -o houqp.me content
	rm -rf tmp*
	git add houqp.me

appengine:content/*
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	pelican -s ./tmp_pelican.conf.py -o appengine content
	rm -rf tmp*
	git add appengine

test:content/*
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	sed -e s@qingping-hou.appspot.com@127.0.0.1:8000@ tmp_pelican.conf.py > tmp1_pelican.conf.py
	pelican -s ./tmp1_pelican.conf.py content
	rm -rf tmp*

push:
	git push

clean:
	rm -rf output appengine houqp.me
