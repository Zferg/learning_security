SHELL := /bin/bash

.DEFAULT_GOAL := help

.PHONY: help

help:
	@echo "Usage:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

kali: ## Build the Kali box
	vagrant up kali --provision
	
sandbox: ## Build the whole sandbox 
	vagrant up kali --provision
	vagrant up juiceshop

teardown: ## Tear down the sandbox
	vagrant halt kali
	vagrant halt juiceshop

destroy: ## Destroy the sandbox
	vagrant halt kali
	vagrant destroy kali
	vagrant halt juiceshop
	vagrant destroy juiceshop
