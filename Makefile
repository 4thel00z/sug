.PHONY:
shell:  ## Load the deps and enter the virtualenvironment
	poetry shell

.PHONY:
python:  ## Run python console with deps (f.e. ptpython) loaded
	poetry run python

.PHONY:
pypi:  ## Open pypi package in browser
	xdg-open https://pypi.org/project/sug

.PHONY:
publish:  ## Publish package to pypi
	poetry publish --build

.PHONY:
stats:  ## Open pypistats for the package in browser
	xdg-open https://pypistats.org/packages/sug
.PHONY:
install_poetry:
	@which poetry 1>/dev/null || curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

help: FORCE          ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
FORCE:
