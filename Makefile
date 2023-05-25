.PHONY: lint, test
lint:
	docker-compose run --rm app sh -c "flake8"
test:
	docker-compose run --rm app sh -c "python manage.py test"

.PHONY: build, run, stop
build:
	docker-compose build
run:
	docker-compose up
stop:
	docker-compose down
