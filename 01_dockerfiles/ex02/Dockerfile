# Ruby As The BaseImage

FROM ruby

# Update packages

RUN apt-get update -y && apt-get upgrade -y && mkdir -p /opt/app

# Your generic container should install, via a ruby container

RUN gem install rails

# The child Dockerfile should launch the rails server 

RUN apt-get install nodejs -y

# copy your rails application in the /opt/app folder of your container

ONBUILD COPY . /opt/app

# Navigate

ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000

# Docker has to install the approtiate gems when it builds.

ONBUILD RUN bundle install

# Launch the migrations and the db population for your application

ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed 