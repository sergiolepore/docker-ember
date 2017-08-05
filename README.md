# Ember-CLI + Node.js (Current & LTS) + Yarn

## A Docker image for creating ambitious web applications :hamster:

---

## Image

This image has everything you need to work with [Ember.js][ember-js-url]:

* [Debian Jessie][debian-jessie-url]
* [Node.js][node-js-url]
* [Yarn][yarn-url] (npm's still there, don't worry)
* [PhantomJS][phantomjs-url]
* [Watchman][watchman-url]
* And, of course, [Ember-CLI][ember-js-url]

All perfectly versioned, up-to-date and working.

## Dockerfiles and tags

### Ember-CLI v2.14.2

* **w/Node.js v8.2.1** | [Dockerfile][2.14.2-node_8.2.1-file]
  * `docker pull sergiolepore/ember-cli:2.14.2-node_8.2.1`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
* **w/Node.js v6.11.2 (LTS)** | [Dockerfile][2.14.2-node_6.11.2-file]
  * `docker pull sergiolepore/ember-cli:2.14.2-node_6.11.2`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

### Ember-CLI v2.14.1

* **w/Node.js v8.1.2** | [Dockerfile][2.14.1-node_8.1.2-file]
  * `docker pull sergiolepore/ember-cli:2.14.1-node_8.1.2`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
* **w/Node.js v6.11.2 (LTS)** | [Dockerfile][2.14.1-node_6.11.2-file]
  * `docker pull sergiolepore/ember-cli:2.14.1-node_6.11.2`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

### Ember-CLI v2.14.0

* **w/Node.js v8.1.2** | [Dockerfile][2.14.0-node_8.1.2-file]
  * `docker pull sergiolepore/ember-cli:2.14.0-node_8.1.2`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
* **w/Node.js v6.11.2 (LTS)** | [Dockerfile][2.14.0-node_6.11.2-file]
  * `docker pull sergiolepore/ember-cli:2.14.0-node_6.11.2`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

### Ember-CLI v2.13.3

* **w/Node.js v8.1.2** | [Dockerfile][2.13.3-node_8.1.2-file]
  * `docker pull sergiolepore/ember-cli:2.13.3-node_8.1.2`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
* **w/Node.js v6.11.2 (LTS)** | [Dockerfile][2.13.3-node_6.11.2-file]
  * `docker pull sergiolepore/ember-cli:2.13.3-node_6.11.2`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

### Ember-CLI v2.13.2

* **w/Node.js v7.10.0** | [Dockerfile][2.13.2-node_7.10.0-file]
  * `docker pull sergiolepore/ember-cli:2.13.2-node_7.10.0`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
* **w/Node.js v6.10.3 (LTS)** | [Dockerfile][2.13.2-node_6.10.3-file]
  * `docker pull sergiolepore/ember-cli:2.13.2-node_6.10.3`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

### Ember-CLI v2.13.1

* **w/Node.js v7.10.0** | [Dockerfile][2.13.1-node_7.10.0-file]
  * `docker pull sergiolepore/ember-cli:2.13.1-node_7.10.0`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
* **w/Node.js v6.10.3 (LTS)** | [Dockerfile][2.13.1-node_6.10.3-file]
  * `docker pull sergiolepore/ember-cli:2.13.1-node_6.10.3`
  * `Yarn v0.24.4`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

### Ember-CLI v2.12.3

* **w/Node.js v6.10.3 (LTS)** | [Dockerfile][2.12.3-node_6.10.3-file]
  * `docker pull sergiolepore/ember-cli:2.12.3-node_6.10.3`
  * `Yarn v0.24.4`
  * `Bower v1.8.0`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`

## Usage

* `docker pull sergiolepore/ember-cli:x.x.x-node_x.x.x`
* Container working directory is `/myapp`, so you might want to mount a volume there (or override it)
* Port `49153` is exposed (livereload)
* Port `4200` is exposed (app)
* `ember server` is the default command to be run when executing the image

### `docker run` examples

```bash
# ember blueprints
$ docker run -it --rm \
  -v /my/project/directory:/myapp \
  sergiolepore/ember-cli:2.14.2-node_8.2.1 \
  ember init --yarn

$ docker run -it --rm \
  -v /my/project/directory:/myapp \
  sergiolepore/ember-cli:2.14.2-node_8.2.1 \
  ember g route hamsters
```

```bash
# yarn
$ docker run -it --rm \
  -v /my/project/directory:/myapp \
  sergiolepore/ember-cli:2.14.2-node_8.2.1 \
  yarn add something@1.2.3
```

```bash
# server
$ docker run -it \
  -v /my/project/directory:/myapp \
  -p 4200:4200 \
  -p 49153:49153 \
  sergiolepore/ember-cli:2.14.2-node_8.2.1
```

```bash
# working on Windows?
$ docker run -it \
  -v /my/project/directory:/myapp \
  -p 4200:4200 \
  -p 49153:49153 \
  sergiolepore/ember-cli:2.14.2-node_8.2.1 \
  ember server --watcher polling
```

```bash
# bash shell
$ docker run -it \
  -v /my/project/directory:/myapp \
  -p 4200:4200 \
  -p 49153:49153 \
  sergiolepore/ember-cli:2.14.2-node_8.2.1 \
  bash

root@container-id:/myapp# ember init
root@container-id:/myapp# ember g route hamsters
root@container-id:/myapp# yarn add something@1.2.3
root@container-id:/myapp# ember server
```

### `docker-compose` examples

* A `docker-compose.yml` file in `/my/project/directory`

```yaml
services:
  emberapp:
    image: sergiolepore/ember-cli:2.14.2-node_8.2.1
    ports:
      - "4200:4200"
      - "49153:49153"
    volumes:
      - .:/myapp
```

```bash
$ docker-compose run --rm emberapp ember init
```

```bash
$ docker-compose up
```


## FAQ

#### How do you keep up with new versions?

Here's what I've been doing: each time a [final release of Ember-CLI gets published][ember-cli-releases-url], I check for the latest `LTS` and `Current` Node.js versions and I generate a new `Dockerfile` based on that. This ensures there will always be an up-to-date image containing the latest security patches and bugfixes from both projects. Alongside those changes, I update all dependencies to their latest version.

I'll try to keep parity between Node.js and Ember.js LTS versions for as long as possible (Ember 2.12.x - Node 6.x, for example).

#### What happens with outdated Node.js versions between LTS releases?

Sorry, but when a major version of Node.js stops getting updates, I stop supporting it as well. If you think you're stuck on one of those versions, please consider upgrading to, at least, the next available LTS.

#### You said this image has everything I need to work with Ember.js, but where's Bower?

Bower is now an [optional dependency since Ember-CLI 2.13][bower-ember-drop-support-url], so I decided to exclude it from my v2.13+ images. If you still need it, I recommend you to create your own custom image:

```Dockerfile
FROM sergiolepore/ember-cli:x.x.x-node_x.x.x

RUN yarn global add bower@x.x.x

### ...
```

#### Where's the `latest` tag?

Sorry, but I don't believe in "latest" things :grin:. No, seriously. Be aware of the version you're working with in order to avoid headaches. Always. 🦌

#### Debian Jessie is way too heavy, where's the Alpine version?

Working on it. Stay tuned.

[2.14.2-node_8.2.1-file]: https://github.com/sergiolepore/docker-ember/tree/2.14.2-node_8.2.1/Dockerfile
[2.14.2-node_6.11.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.14.2-node_6.11.2/Dockerfile
[2.14.1-node_8.1.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.14.1-node_8.1.2/Dockerfile
[2.14.1-node_6.11.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.14.1-node_6.11.2/Dockerfile
[2.14.0-node_8.1.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.14.0-node_8.1.2/Dockerfile
[2.14.0-node_6.11.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.14.0-node_6.11.2/Dockerfile
[2.13.3-node_8.1.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.13.3-node_8.1.2/Dockerfile
[2.13.3-node_6.11.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.13.3-node_6.11.2/Dockerfile
[2.13.2-node_7.10.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.13.2-node_7.10.0/Dockerfile
[2.13.2-node_6.10.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.13.2-node_6.10.3/Dockerfile
[2.13.1-node_7.10.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.13.1-node_7.10.0/Dockerfile
[2.13.1-node_6.10.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.13.1-node_6.10.3/Dockerfile
[2.12.3-node_6.10.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.12.3-node_6.10.3/Dockerfile

[ember-js-url]: https://www.emberjs.com/
[debian-jessie-url]: https://www.debian.org/releases/jessie/
[node-js-url]: https://nodejs.org/
[yarn-url]: https://yarnpkg.com/
[phantomjs-url]: http://phantomjs.org/
[watchman-url]: https://facebook.github.io/watchman/
[ember-cli-releases-url]: https://github.com/ember-cli/ember-cli/releases
[bower-ember-drop-support-url]: https://www.emberjs.com/blog/2017/04/29/ember-2-13-released.html#toc_other-notable-changes
