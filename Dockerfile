FROM inteliotdevkit/intel-iot-yocto
MAINTAINER Paolo Bosetti
LABEL name=edison-crossbuild
VOLUME /root/build
WORKDIR /root/build
COPY bash_profile /root/.bash_profile
RUN opkg update && \
  opkg install ruby ruby-dev bison bison-dev cmake \
               libyaml-0-2 libyaml-0-dev \
               libpcre1 libpcre-dev && \
  gem install pry erubis --no-rdoc --no-ri && \
  rm -rf /tmp/opkg-*/
# RUN apt-get update && apt-get install -y \
#   bsdmainutils \
#   build-essential clang bison cmake \
#   ruby ruby-dev \
#   git \
#   libyaml-0-2 libyaml-dev \
#   libpcre3 libpcre3-dev \
#   libatlas-base-dev libatlas-dev \
#   libblas3 libblas-common libblas-dev \
#   && rm -rf /var/lib/apt/lists/*
# RUN gem install erubis pry colorize rake --no-rdoc --no-ri
# CMD ["/bin/bash", "-li"]
