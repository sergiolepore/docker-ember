FROM node:8.11.1-alpine
LABEL maintainer "Sergio Lepore"

USER root

#============================================
# Update repos for latest Chromium
#============================================
RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories

#============================================
# Dependencies
#============================================
# -------------------------------------------
# Common
# -------------------------------------------
# - nss: chromium
#
# -------------------------------------------
# Build
# -------------------------------------------
# - bash: watchman
# - linux-headers: watchman
# - libressl-dev: watchman
# - python-dev: watchman
# - autoconf: watchman
# - automake: watchman
# - libtool: watchman
# - alpine-sdk: watchman
#============================================
RUN apk add --update --no-cache \
      nss@edge \
    && apk add --update --no-cache --virtual .build-deps \
      bash==4.3.48-r1 \
      linux-headers==4.4.6-r2 \
      libressl-dev==2.5.5-r0 \
      python-dev==2.7.14-r0 \
      autoconf==2.69-r0 \
      automake==1.15.1-r0 \
      libtool==2.4.6-r1 \
      alpine-sdk==0.5-r0

#============================================
# Chromium
#============================================
# Headless Chrome is required since Ember 
# 2.16 to run tests, as a replacement for
# PhantomJS.
# Since this image comes with Chromium
# instead of Chrome, you'll have to update
# your testem.js file by replacing "Chrome"
# with "Chromium".
#============================================
RUN apk add --update --no-cache \
      chromium@edge
ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/

#============================================
# Watchman
#============================================
# The default file watcher.
#============================================
RUN cd /tmp/ \
    && git clone https://github.com/facebook/watchman.git watchman \
    && cd watchman \
    && git checkout v4.9.0 \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install

#============================================
# OS Cleanup
#============================================
RUN apk del --purge --force \
      .build-deps \
    && rm -rf /var/cache/apk/* \
      /usr/share/man \
      /tmp/watchman

#============================================
# Global Node.js packages
#============================================
# - ember-cli: the main protagonist of this
#     Docker image.
#============================================
RUN yarn global add ember-cli@3.1.4

#============================================
# Node Cleanup
#============================================
RUN yarn cache clean \
    && npm cache clean --force \
    && rm -rf /usr/local/lib/node_modules/npm/man \
      /usr/local/lib/node_modules/npm/doc \
      /usr/local/lib/node_modules/npm/html

#============================================
# Run the whole thing as non-root from now on
#============================================
USER node

#============================================
# Default working directory
#============================================
WORKDIR /myapp

#============================================
# Ports being listened for connections
#============================================
# - 4200: devserver. You can access your app
#     here.
# - 7020: livereload. Your app, while on 
#     development, will try to connect to
#     this port. It will listen for a signal
#     coming from the server indicating that
#     something has changed and the browser
#     needs a refresh.
# - 7357: TestEm. You can connect to this
#     port with your preferred browser and
#     tests will run there automatically
#     (besides Google Chrome), 
#============================================
EXPOSE 4200 7020 7357

#============================================
# Default command to be run
#============================================
CMD ["ember", "server"]
