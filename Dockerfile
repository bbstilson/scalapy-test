FROM ubuntu:latest

WORKDIR /app

ENV PYTHONPATH "/app/src${PYTHONPATH:+:${PYTHONPATH}}"

RUN apt-get update && apt-get install --yes \
  # Required stuff
  python3 python3-pip openjdk-8-jdk-headless locales sudo \
  # Developer tools
  curl htop vim wget

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Get SBT. https://www.scala-sbt.org/1.0/docs/Installing-sbt-on-Linux.html
# This sbt CLI installs the version of sbt required by the project later when we run sbt version.
RUN apt-get update && apt-get install -y apt-transport-https
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
  APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
  apt-get update && apt-get install --yes sbt

RUN sbt version

COPY . .

CMD [ "/bin/bash" ]
