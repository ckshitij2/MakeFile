PIP := /usr/bin/pip
run:
	python source/main.py

install: requirements.txt
	$(PIP) install -r requirements.txt

build: setup.py
	/usr/bin/python setup.py build bdist_wheel


clean:
	rm -rf build
	rm -rf dist
	rm -rf myprojectname.egg-info

