ifeq ($(OS),Windows_NT)
run:
	python source/main.py

install: requirements.txt
	pip install -r requirements.txt

build: setup.py
	python setup.py build bdist_wheel

clean:
	if exist "build" rd /s /q build
	if exist "dist" rd /s /q dist
	if exist "myprojectname.egg-info" rd /s /q myprojectname.egg-info
else
run:
	python source/main.py

install: requirements.txt
	pip install -r requirements.txt

build: setup.py
	python setup.py build bdist_wheel

clean:
	rm -rf build
	rm -rf dist
	rm -rf myprojectname.egg-info
endif
