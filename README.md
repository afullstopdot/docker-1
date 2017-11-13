## Getting Started

To use the progam for learning or use clone it locally.

### Prerequisites

What things you need to install the software and how to install them

```
docker and docker-machine binaries
```

### Installing

Installing just requires a clone or download


```
git clone https://github.com/afullstopdot/docker-1.git on terminal or download the zip straight from here.
```

## MacOs installation

For use

### Install with brew

Install the docker binary

```
brew install docker
```

Install the docker-machine binary

```
brew install docker-machine
```

Run 00_how_to_docker 01 to setup *Char* machine

```
./00_how_to_docker/01.sh
```

Run 00_how_to_docker 03 to setup *Char* environment

## usage

Each file in 00_how_to_docker is an executable

```
./01.sh (Create Char machine)
```

For dockerfiles you will need to build the image first

```
docker build -t [container name] [/path/to/Dockerfile]
```

You then run the container (with right flags for each exercise)

```
docker run [--interactive] [--tty] [container name]
```

## Authors

* **Andre Marques** - *All* - [afullstopdot](https://github.com/afullstopdot)
* **** - *All* - [afullstopdot](https://github.com/afullstopdot)

## Resources

* **Docker official documentation** (https://docs.docker.com/)
* **aheil** (https://github.com/andreasheil)

## Notes

```
The whole idea of docker-1 is to learn containerization
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Disclaimer

This message pertains to the students of 42 and WTC (WeThinkCode_).

Copying this work as is, without understanding and being able to implement your own work defeats the pedagogy and subsequently is cheating.

Goodluck!
