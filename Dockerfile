FROM jenkins/inbound-agent:latest-jdk21
ARG AGENT_WORKDIR=/j
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
#      openjdk8 \
#      bash \
#      git \
      docker.io \
#      curl \
      make

USER jenkins
