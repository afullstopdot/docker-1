# cmds to install gcc

cmds="apt-get update -y > /dev/null && \
apt-get upgrade -y > /dev/null && \
apt-get install -y gcc > /dev/null && \
apt-get install -y git > /dev/null && \
apt-get install -y vim > /dev/null && \
echo '#include <stdio.h>\nint main(){printf(\"\x1B[32mHello From The C Side Of Things\x1B[0m\");return(0);}' > file.c && \
gcc file.c -o runMe > /dev/null && \
./runMe"

# From the shell of a debian container, install via the containers
# package manager everything you need to compile C source code and
# push it onto a git repo

docker run --interactive --rm --tty debian /bin/sh -c "$cmds"