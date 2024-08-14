#! /bin/bash
[[ -z namehereyes ]] && DockerRepo='' || DockerRepo=namehereyes
docker_username=$DockerRepo docker compose -f component-test/docker-compose.yml --project-directory . -p ci up --build --exit-code-from test
