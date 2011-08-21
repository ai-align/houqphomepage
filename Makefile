.PHONY:all clean push test

all:test

generate:
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	pelican -s ./tmp_pelican.conf.py content
	rm -rf tmp_pelican.conf.py

test:
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	sed -e s@qingping-hou.appspot.com@127.0.0.1:8000@ tmp_pelican.conf.py > tmp1_pelican.conf.py
	pelican -s ./tmp1_pelican.conf.py content
	rm -rf tmp*

push:
	git push

clean:
	rm -rf output
