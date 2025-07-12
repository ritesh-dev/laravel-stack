# ---- one‑liners for humans ----
.PHONY: init up refresh-tags shell down prune

init:               ## First‑time setup (install Laravel + fetch tags)
	./scripts/init-project.sh

up:                 ## Build & start the stack
	docker compose up -d --build

refresh-tags:       ## Pull the newest container versions & rebuild
	./scripts/fetch-latest-tags.sh
	docker compose pull
	docker compose up -d --build

shell:              ## Drop into the PHP container
	docker compose exec app bash

down:
	docker compose down --remove-orphans

prune:              ## Remove dangling images, volumes & networks (⚠️ )
	docker system prune -f