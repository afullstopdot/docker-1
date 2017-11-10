# Launch a 42school/engineering-bay service in two replicas and make sure that the service works properly (see the documentation provided at hub.docker.com)

docker service create --name engineering-bay --replicas 2 --network overmind --env OC_USERNAME=amarquez --env OC_PASSWD=poesliate 42school/engineering-bay