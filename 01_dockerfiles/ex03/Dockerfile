# Package

FROM debian

# Install dependecies

RUN apt-get update -y && apt-get upgrade -y

# DEPENDENCIES

RUN apt-get install git -y
RUN apt-get install wget -y
RUN apt-get install gcc -y

# INSTALL GO

WORKDIR $HOME/local
RUN wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
RUN tar -xzvf go1.8.linux-amd64.tar.gz

# Set ENV

ENV GOROOT=$HOME/local/go
ENV GOPATH=$HOME/gogs
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

WORKDIR $GOPATH/src/github.com/gogits

# DOWNLOAD GOGS FROM DEVELOP BRANCH

RUN git clone --depth=1 -b develop https://github.com/gogits/gogs
RUN go get -u -tags "sqlite" github.com/gogits/gogs
WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go build -tags "sqlite"

# CREATE DIRECTORIES

RUN mkdir $GOPATH/src/github.com/gogits/logs
RUN mkdir /root/gogs-repositories
RUN mkdir /root/data

# START

EXPOSE 6000

# User root

ENV USER=root

ENTRYPOINT ./gogs web