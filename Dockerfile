FROM node:8.9.4
LABEL maintainer "Sergio Lepore"

USER root

#============================================
# Common deps
#============================================
# - python-dev: watchman
#============================================
RUN apt-get -qqy update \
    && apt-get -qqy install \
      python-dev=2.7.9-1 \
      --no-install-recommends

#============================================
# Crappy Google Chrome dependency
#============================================
# Installs the latest crappy version of the
# crappy browser. Since Ember v2.16 it is
# configured by default in testem.
#============================================
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
    && apt-get -qqy update \
    && apt-get -qqy install \
      google-chrome-stable \
      --no-install-recommends

#============================================
# Crappy Chrome hacks
#============================================
# Allows Google Chrome to run as root.
# Otherwise it needs a HUGE seccomp profile
# if executed as non root.
#============================================
COPY wrap_chrome_binary /opt/bin/wrap_chrome_binary
RUN /opt/bin/wrap_chrome_binary

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
# Cleanup
#============================================
RUN rm -rf /var/lib/apt/lists/* \
    /var/cache/apt/* \
    /etc/apt/sources.list.d/google-chrome.list \
    /tmp/watchman

#============================================
# Global Node.js packages
#============================================
# - ember-cli: the main protagonist of this
#     Docker image.
#============================================
RUN yarn global add ember-cli@3.0.0

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
#============================================
EXPOSE 4200 7020

#============================================
# Default command to be run
#============================================
CMD ["ember", "server"]
