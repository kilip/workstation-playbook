#!make
PROJECT_DIR := ${PWD}

deps:
	pip3 install -r requirements.txt
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

converge:
	molecule converge

destroy:
	molecule destroy

testing:
	molecule --version
	molecule test

login:
	docker exec -e COLUMNS=94 -e LINES=54 -e TERM=bash -e TERM=xterm -ti instance bash
