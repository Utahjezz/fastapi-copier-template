setup-local-env:
	pip install pip-tools
	@make requirements-dev.txt
	pip install -r requirements-dev.txt
	pre-commit install

requirements-dev.txt:
	pip-compile requirements-dev.in --output-file $@

requirements.txt:
	pip-compile requirements.in --output-file $@

bump:
	cz bump

push-tags:
	git push --tags

run:
	PYTHONPATH=. python app/asgi.py
