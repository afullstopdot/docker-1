# Launch a mysql container as a background task
docker run --detach --name spawning-pool --restart=on-failure --mount source=hatchery,target=/var/lib/mysql --env MYSQL_ROOT_PASSWORD=Kerrigan --env MYSQL_DATABASE=zerglings mysql:8.0.3