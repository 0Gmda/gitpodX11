#FROM gitpod/workspace-full
FROM gitpod/workspace-full-vnc

USER root

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN apt-get update \
#    && apt-get install -y bastet \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/

RUN apt-get update \
    && apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf2–4 libnss3
