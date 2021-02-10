.PHONY: clean submit develop

prod: dist
	python3 -m twine upload dist/*

test: dist
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*

install:
	pip3 install pygraders

dist: setup.py
	python3 setup.py sdist bdist_wheel

clean:
	rm -rf *.egg-info
	rm -rf build
	rm -rf dist
