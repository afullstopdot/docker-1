# Launch nginx container, as a background task.
# It should be named overlord, be able to restart on its own
# and have its 80 port attached to the 5000 port of Char

docker run --name overlord -d --restart=always -p 5000:80 nginx