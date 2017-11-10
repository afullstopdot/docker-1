# Add Aiur as a worker of the local swarm in which Char is leader

docker-machine ssh Aiur "docker swarm join --token $(docker swarm join-token worker -q) $(./02.sh):2377"