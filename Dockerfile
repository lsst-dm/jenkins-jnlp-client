FROM jenkins/inbound-agent:latest-alpine-jdk21
ARG AGENT_WORKDIR=/j
USER root
RUN apk add --no-cache --upgrade \
      shadow \
      openjdk8 \
      bash \
      git \
      docker \
      curl \
      make

USER jenkins
