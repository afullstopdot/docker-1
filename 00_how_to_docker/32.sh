# Force quit and delete all the containers (whatever their status), in one command

docker rm -f $(docker ps -a -q)