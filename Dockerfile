FROM node:6.11.2
LABEL maintainer "Sergio Lepore"

# bzip2 and fontconfig for phantomjs
# python-dev for watchman
RUN apt-get update \
    && apt-get install -y \
      bzip2=1.0.6-7+b3 \
      fontconfig=2.11.0-6.3+deb8u1 \
      python-dev=2.7.9-1 \
      apt-transport-https=1.0.9.8.4 \
      ca-certificates=20141019+deb8u3 \
      curl=7.38.0-4+deb8u5 \
      gnupg=1.4.18-7+deb8u4 \
      --no-install-recommends \
    && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update \
    && apt-get install -y \
      google-chrome-stable \
      --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i 's/"$@"/--no-sandbox "$@"/g' /opt/google/chrome/google-chrome

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
RUN yarn global add phantomjs-prebuilt@2.1.15
RUN yarn global add ember-cli@2.15.0
# 4200: devserver
# 49153: livereload
EXPOSE 4200 49153
CMD ["ember", "server"]
