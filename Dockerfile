FROM jenkins/inbound-agent:latest-jdk21
ARG AGENT_WORKDIR=/j
USER root
RUN apk add --no-cache --upgrade \
      openjdk8 \
      bash \
      git \
      docker \
      curl \
      make

USER jenkins
