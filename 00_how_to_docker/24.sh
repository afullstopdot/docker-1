# Launch a rabbitmq SERVICE that will be named orbital-command

docker service create --name orbital-command --network overmind --env RABBITMQ_DEFAULT_USER=amarquez --env RABBITMQ_DEFAULT_PASS=poesliate rabbitmq