#!make

deps:
	pip3 install -r requirements.txt
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

converge:
	molecule converge

destroy:
	molecule destroy

testing:
	molecule test
