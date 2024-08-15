help:
	@echo  'Start or Stop StackStorm:'
	@echo  ''
	@echo  '  setup           - Start all StackStorm container'
	@echo  '  destory         - Stop all StackStorm container'
	@echo  '  st2client       - Connect into st2client to execute st2 commands'
	@echo  ''

.PHONY: help Makefile

.PHONY: setup
setup:
	cd st2-docker; docker compose up -d

.PHONY: destroy
destroy:
	cd st2-docker; docker compose down

.PHONY: st2client
st2client:
	cd st2-docker; docker compose exec st2client bash