FROM ubuntu:20.04

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install  --assume-yes -y curl gnupg lsb-core  software-properties-common && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg |  apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt-get install -y curl gnupg lsb-core  software-properties-common && \
    apt-get update && \
    apt-get install -y nomad

ADD *.hcl /etc/nomad.d/

