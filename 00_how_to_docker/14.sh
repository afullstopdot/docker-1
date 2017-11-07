# Launch a wordpress container
docker run --name lair --link spawning-pool:mysql -d -p 8080:80 wordpress