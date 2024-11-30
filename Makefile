-include .makefiles/composite-action/Makefile
.makefiles/composite-action/Makefile:
	@git clone https://github.com/tmknom/makefiles.git .makefiles >/dev/null 2>&1

RUN_IDS ?= $(shell gh run list --workflow test.yml --json databaseId --jq '.[].databaseId')

.PHONY: clean
clean: ## Clean up workflow run logs
	@for run_id in ${RUN_IDS}; do \
		gh run delete "$${run_id}"; \
	done
