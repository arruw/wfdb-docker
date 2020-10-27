FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y tar curl gcc make libcurl4-openssl-dev libexpat1-dev && \
  rm -rf /var/lib/apt/lists/*

RUN curl https://archive.physionet.org/physiotools/wfdb.tar.gz | tar xvz && \
  cd wfdb-* && \
  ./configure && \
  make install && \
  make check
