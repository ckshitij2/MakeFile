run:
	python source/main.py

install: requirements.txt
	pip install -r requirements.txt

build: setup.py
	python setup.py build bdist_wheel

clean:
	rd /s /q build
	rd /s /q dist
	rd /s /q myprojectname.egg-info

