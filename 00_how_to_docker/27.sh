# Get the real-time logs of one the tasks of the engineering-bay service

docker-machine ssh Char "docker service logs $(docker service ps engineering-bay -f "name=engineering-bay.1" -q) --follow"