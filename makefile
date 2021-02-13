clean:
	rm -rf env

install:
	virtualenv env
	env/bin/pip install --upgrade pip
	env/bin/pip install $(shell cat requirements.txt | tr '\n' ' ')
