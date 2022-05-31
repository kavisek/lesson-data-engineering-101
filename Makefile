

.PHONY: install
install:
	poetry install

.PHONY: build
build: install
	poetry build

.PHONY: black
black:
	poetry run black .

.PHONY: pytest
pytest:
	poetry run pytest --cov=./tests --black -rAP 

.PHONY: jupyter
jupyter:
	poetry run jupyter-lab --allow-root 

.PHONY: notebook
notebook:
	poetry run jupyter notebook --allow-root --NotebookApp.token='' --NotebookApp.password=''

.PHONY: slides
slides:
	poetry run jupyter nbconvert notebook.ipynb --to slides --post serve