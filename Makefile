.PHONY:all clean push

all:generate

generate:
	sed -e s@10/10/1010@`date +%m/%d/%Y`@ pelican.conf.py > tmp_pelican.conf.py
	pelican -s ./tmp_pelican.conf.py content
	rm -rf tmp_pelican.conf.py

push:
	cd output && git push

clean:
