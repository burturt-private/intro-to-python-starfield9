#!/bin/bash
echo $(docker --version)

docker compose -f docker-compose.yaml up --abort-on-container-exit --build

# exit $(docker inspect test-python-autograde-autograde-1 --format='{{.State.ExitCode}}')

exit $(docker compose ps -aq | xargs docker inspect -f '{{ .Name }} {{ .State.ExitCode }}' | grep 'autograde-script' | cut -d ' ' -f2)
