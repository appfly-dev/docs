PNPM := $(shell command -v pnpm 2>/dev/null || echo npx --yes pnpm)

.PHONY: help install dev build preview typecheck lint lint-fix clean

help:
	@echo "Available targets:"
	@echo "  make install    Install dependencies"
	@echo "  make dev        Start Astro dev server"
	@echo "  make build      Build the site for production"
	@echo "  make preview    Preview the production build"
	@echo "  make typecheck  Run astro check"
	@echo "  make lint       Lint docs content"
	@echo "  make lint-fix   Lint docs content and auto-fix"
	@echo "  make clean      Remove build artifacts"

install:
	$(PNPM) install

dev:
	$(PNPM) dev

build:
	$(PNPM) build

preview:
	$(PNPM) preview

typecheck:
	$(PNPM) typecheck

lint:
	$(PNPM) lint:docs

lint-fix:
	$(PNPM) lint:docs:fix

clean:
	rm -rf dist .astro
