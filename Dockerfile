# building (one-time setup)
### docker build -t c0 .
# running 
### docker run --name=c0_container -v <PATH_TO_122_FILES>:/private/122 -it c0
### replace <PATH_TO_122_FILES> with the path to your local 122 files 
### (you can do pwd within that folder to find the path)
# restarting
### docker start -i c0_container
# quitting
### exit


FROM ubuntu:18.04
CMD bash

ARG DEBIAN_FRONTEND=noninteractive
RUN mkdir private
COPY setup.sh private

RUN apt-get -y update && \
    apt-get -y install \
      bash-completion \
      build-essential \
      wget \
      sudo \
      valgrind

RUN cd private && chmod +x setup.sh && ./setup.sh && rm setup.sh
