DC = sudo docker compose
EXEC = sudo docker exec -it
LOGS = sudo docker logs
ENV = --env-file .env
APP_FILE = docker_compose/app.yaml
APP_CONTAINER = main_app

.PHONY: app_build
app_build:
	${DC} -f ${APP_FILE} ${ENV} up --build -d

.PHONY: app_down
app_down:
	${DC} -f ${APP_FILE} down

.PHONY: app_logs
app_logs:
	${LOGS} -f ${APP_CONTAINER} -f