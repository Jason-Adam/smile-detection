.PHONY: clean lint create_environment bind_kernel

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell pwd | rev | cut -f1 -d'/' - | rev)

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

## Lint using flake8
lint:
	flake8

## Set up python virtual environment
create_environment:
	pipenv install --dev --skip-lock

## Bind ipython kernel to env: only run after "pipenv shell"
bind_kernel:
	ipython kernel install --user --name=$(PROJECT_DIR)
