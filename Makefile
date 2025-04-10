all:
	setup
	format
	test
	build

format:
	@echo "Formatting the code..."
	@uv run black .
	@uv run ruff .
	@echo "Formatting complete."

test:
	@echo "Running tests..."
	@uv run pytest tests
	@echo "Tests complete."

build:
	@echo "Building the documentation..."
	@uv run sphinx-build -b html docs build
	@echo "Build complete."

setup:
	@echo "Setting up the project..."
	@echo "Setting up pre-commit hooks..."
	@uv run pre-commit install
	@echo "Setup complete."
