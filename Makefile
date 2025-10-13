.PHONY: setup dev test build help

help:
	@echo "Available targets:"
	@echo "  setup  - Install dependencies"
	@echo "  dev    - Run development server"
	@echo "  test   - Run tests"
	@echo "  build  - Build the application"

setup:
	npm ci

dev:
	npm run dev

test:
	npm run test

build:
	npm run build
