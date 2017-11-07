# Launch a mysql container as a background task

docker run --detach --restart=on-failure --mount source=hatchery,target=/var/lib/mysql --env MYSQL_ROOT_PASSWORD=Kerrigan --env MYSQL_DATABASE=zerglings --name spawning-pool mysql:latest