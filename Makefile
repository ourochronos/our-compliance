.PHONY: lint format test typecheck clean install dev

install:
	pip install -e .

dev:
	pip install -e ".[dev]"

lint:
	ruff check src/ tests/

format:
	ruff format src/ tests/

format-check:
	ruff format --check src/ tests/

typecheck:
	mypy src/

test:
	pytest tests/ -m "not integration and not slow" -v

test-all:
	pytest tests/ -v

coverage:
	pytest tests/ --cov=src/oro_compliance --cov-report=html -m "not integration and not slow"

clean:
	rm -rf build/ dist/ *.egg-info src/*.egg-info .pytest_cache .mypy_cache htmlcov .coverage
	find . -type d -name __pycache__ -exec rm -rf {} +

check: lint format-check typecheck test
