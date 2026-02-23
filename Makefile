.PHONY: install test run docker-build docker-up

install:
	python -m pip install --upgrade pip
	pip install -r app/requirements.txt pytest httpx

test:
	pytest -q

run:
	uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

docker-build:
	docker build -t devops-learning-api:latest .

docker-up:
	docker compose up --build
