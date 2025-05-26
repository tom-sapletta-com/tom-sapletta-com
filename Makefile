# Basic Makefile for common project tasks
default: help

help:
	@echo "Available targets:"
	@echo "  help        Show this help message."
	@echo "  build       Build the project (customize as needed)."
	@echo "  clean       Remove build artifacts."
	@echo "  test        Run tests (customize as needed)."

build:
	@echo "No build step defined. Customize this target."

clean:
	rm -rf build dist *.egg-info __pycache__

.PHONY: help build clean test

test:
	@echo "No tests defined. Customize this target."
