# Dockerizing Catmandu

FROM debian:jessie
MAINTAINER Vitali Peil

RUN apt-get update && apt-get install -y \
  cpanminus \
  build-essential \
  libexpat1-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libgdbm-dev \
  libcapture-tiny-perl

RUN adduser --disabled-password --gecos "" catmandu

COPY . /home/catmandu

WORKDIR /home/catmandu

RUN cpanm -n -q --installdeps . && \
  rm -rf /var/lib/apt/lists/*

RUN apt-get remove -y cpanminus build-essential && \
  apt-get autoremove -y

RUN chown catmandu:catmandu *

USER catmandu

CMD ["/bin/bash"]
