# You must send a troup of Marines to eliminate the intruders

docker service create --name marines --replicas 2 --network overmind --env OC_USERNAME=amarquez --env OC_PASSWD=poesliate 42school/marine-squad