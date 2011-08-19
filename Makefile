.PHONY:all clean push

all:generate

generate:
	pelican -s ./pelican.conf.py content

push:
	cd output && git push

clean:
