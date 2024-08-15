help:
	@echo  'Start or Stop StackStorm:'
	@echo  ''
	@echo  '  setup           - Start all StackStorm container'
	@echo  '  destory         - Stop all StackStorm container'
	@echo  ''

.PHONY: help Makefile

.PHONY: setup
setup:
	cd some_dir; docker compose up -d

.PHONY: destroy
destroy:
	cd some_dir; docker compose down
