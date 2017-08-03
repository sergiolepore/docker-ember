FROM node:8.1.2
LABEL maintainer "Sergio Lepore"

# bzip2 and fontconfig for phantomjs
# python-dev for watchman
RUN apt-get update \
    && apt-get install -y \
      bzip2=1.0.6-7+b3 \
      fontconfig=2.11.0-6.3+deb8u1 \
      python-dev=2.7.9-1 \
    && rm -rf /var/lib/apt/lists/*

RUN cd /tmp/ \
    && git clone https://github.com/facebook/watchman.git watchman \
    && cd watchman \
    && git checkout v4.7.0 \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install \
    && cd /tmp/ \
    rm -rf watchman

WORKDIR /myapp
RUN yarn global add phantomjs-prebuilt@2.1.14
RUN yarn global add ember-cli@2.14.0
# 4200: devserver
# 49153: livereload
EXPOSE 4200 49153
CMD ["ember", "server"]
