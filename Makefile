#!make
PROJECT_DIR := ${PWD}

ansible-deps:
	pip3 install -r requirements.txt
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

deps:
	ansible-playbook playbook-core.yml --tags=deps

converge:
	molecule converge

verify:
	molecule verify

destroy:
	molecule destroy

testing:
	molecule --version
	molecule test

login:
	molecule login

configure:
	ansible-playbook playbook-core.yml --tags=configure

ping:
	ansible all -m ping
