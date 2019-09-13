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
    && apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf-2-4 libnss3

RUN apt-get install -y twm xterm

### install google chrome
## 【参考】https://kazuhira-r.hatenablog.com/entry/20180728/1532770315
#RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#RUN sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#RUN sudo apt-get update
#RUN sudo apt-get install -y google-chrome-stable

RUN apt-get install -y chromium-browser

RUN apt-get install -f

chromium-browser &
