# Get internal IP address of ngix server "overlord"

docker inspect -f "{{ .NetworkSettings.IPAddress }}" overlord