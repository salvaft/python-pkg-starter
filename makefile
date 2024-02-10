.PHONY: lint type-check format build

lint:
	poetry run pylint package

types:
	poetry run mypy package

format:
	poetry run black .

build: lint types
	poetry build