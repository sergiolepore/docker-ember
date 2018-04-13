# Ember-CLI + Node.js (Current & LTS) + Yarn

A Docker image for creating ambitious Ember applications :hamster:

---

# Table of Contents

- [Ember-CLI + Node.js (Current & LTS) + Yarn](#ember-cli-nodejs-current-lts-yarn)
- [Table of Contents](#table-of-contents)
  - [Image Contents](#image-contents)
  - [Dockerfiles and tags](#dockerfiles-and-tags)
    - [Ember-CLI v3.0.3](#ember-cli-v303)
    - [Ember-CLI v3.0.2](#ember-cli-v302)
    - [Ember-CLI v3.0.1](#ember-cli-v301)
    - [Ember-CLI v3.0.0](#ember-cli-v300)
    - [Ember-CLI v2.18.2](#ember-cli-v2182)
    - [Ember-CLI v2.18.1](#ember-cli-v2181)
    - [Ember-CLI v2.18.0](#ember-cli-v2180)
    - [Ember-CLI v2.17.2](#ember-cli-v2172)
    - [Ember-CLI v2.17.1](#ember-cli-v2171)
    - [Ember-CLI v2.17.0](#ember-cli-v2170)
    - [Ember-CLI v2.16.2](#ember-cli-v2162)
    - [Ember-CLI v2.16.1](#ember-cli-v2161)
    - [Ember-CLI v2.16.0](#ember-cli-v2160)
    - [Ember-CLI v2.15.1](#ember-cli-v2151)
    - [Ember-CLI v2.15.0](#ember-cli-v2150)
    - [Ember-CLI v2.14.2](#ember-cli-v2142)
    - [Ember-CLI v2.14.1](#ember-cli-v2141)
    - [Ember-CLI v2.14.0](#ember-cli-v2140)
    - [Ember-CLI v2.13.3](#ember-cli-v2133)
    - [Ember-CLI v2.13.2](#ember-cli-v2132)
    - [Ember-CLI v2.13.1](#ember-cli-v2131)
    - [Ember-CLI v2.12.3](#ember-cli-v2123)
  - [Usage](#usage)
    - [`docker run` examples](#docker-run-examples)
    - [`docker-compose` examples](#docker-compose-examples)
  - [FAQ](#faq)
    - [How do you keep up with new versions?](#how-do-you-keep-up-with-new-versions)
    - [What happens with outdated Node.js versions between LTS releases?](#what-happens-with-outdated-nodejs-versions-between-lts-releases)
    - [You said this image has everything I need to work with Ember.js, but where's Bower?](#you-said-this-image-has-everything-i-need-to-work-with-emberjs-but-wheres-bower)
    - [Where's the `latest` tag?](#wheres-the-latest-tag)
    - [Debian Jessie is way too heavy, where's the Alpine version?](#debian-jessie-is-way-too-heavy-wheres-the-alpine-version)
    - [Since 2.16.0, `ember test -s` ends up showing a Chrome error regarding some SUID sandbox. How do I make it work?](#since-2160-ember-test--s-ends-up-showing-a-chrome-error-regarding-some-suid-sandbox-how-do-i-make-it-work)
      - [3.0.0 < Ember-CLI >= 2.16.0](#300-ember-cli-2160)
      - [Ember-CLI >= 3.0.0](#ember-cli-300)
    - [I have a custom Dockerfile based on yours, and my `USER` is no longer root because of reason X. With tags between 2.16.0 and 3.0.0, `ember test -s` ends up showing an "operation not permitted" error. How do I make it work?](#i-have-a-custom-dockerfile-based-on-yours-and-my-user-is-no-longer-root-because-of-reason-x-with-tags-between-2160-and-300-ember-test--s-ends-up-showing-an-operation-not-permitted-error-how-do-i-make-it-work)

## Image Contents

This image has everything you need to work with [Ember.js][ember-js-url]:

* [Debian Jessie][debian-jessie-url]
* [Node.js][node-js-url]
* [Yarn][yarn-url] (npm's still there, don't worry)
* [PhantomJS][phantomjs-url] (for Ember-CLI < 3.0.0, [why?][ember-blog-phantom-ember3])
* [Watchman][watchman-url]
* [Google Chrome][chrome-url] ([why?][ember-blog-chrome-url])
* And, of course, [Ember-CLI][ember-js-url]

All perfectly versioned, up-to-date and working.

## Dockerfiles and tags

### Ember-CLI v3.0.3

* **w/Node.js v9.11.1** | [Dockerfile][3.0.3-node_9.11.1-file]
  * `docker pull sergiolepore/ember-cli:3.0.3-node_9.11.1`
  * `Yarn v1.5.1`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.11.1 (LTS)** | [Dockerfile][3.0.3-node_8.11.1-file]
  * `docker pull sergiolepore/ember-cli:3.0.3-node_8.11.1`
  * `Yarn v1.5.1`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v3.0.2

* **w/Node.js v9.11.1** | [Dockerfile][3.0.2-node_9.11.1-file]
  * `docker pull sergiolepore/ember-cli:3.0.2-node_9.11.1`
  * `Yarn v1.5.1`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.11.1 (LTS)** | [Dockerfile][3.0.2-node_8.11.1-file]
  * `docker pull sergiolepore/ember-cli:3.0.2-node_8.11.1`
  * `Yarn v1.5.1`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v3.0.1

* **w/Node.js v9.11.1** | [Dockerfile][3.0.1-node_9.11.1-file]
  * `docker pull sergiolepore/ember-cli:3.0.1-node_9.11.1`
  * `Yarn v1.5.1`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.11.1 (LTS)** | [Dockerfile][3.0.1-node_8.11.1-file]
  * `docker pull sergiolepore/ember-cli:3.0.1-node_8.11.1`
  * `Yarn v1.5.1`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v3.0.0

* **w/Node.js v9.5.0 Experimental** | [Dockerfile][3.0.0-node_9.5.0-experimental-file]
  * `docker pull sergiolepore/ember-cli:3.0.0-node_9.5.0-experimental`
  * Contains exactly the same dependencies as `3.0.0-node_9.5.0`
  * Now working as non-root
  * Support for Google Chrome running as non-root
  * All the goodies will be included in the next image tag
* **w/Node.js v9.5.0** | [Dockerfile][3.0.0-node_9.5.0-file]
  * `docker pull sergiolepore/ember-cli:3.0.0-node_9.5.0`
  * `Yarn v1.3.2`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][3.0.0-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:3.0.0-node_8.9.4`
  * `Yarn v1.3.2`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.18.2

* **w/Node.js v9.5.0** | [Dockerfile][2.18.2-node_9.5.0-file]
  * `docker pull sergiolepore/ember-cli:2.18.2-node_9.5.0`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.18.2-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.18.2-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.18.1

* **w/Node.js v9.5.0** | [Dockerfile][2.18.1-node_9.5.0-file]
  * `docker pull sergiolepore/ember-cli:2.18.1-node_9.5.0`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.18.1-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.18.1-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.18.0

* **w/Node.js v9.5.0** | [Dockerfile][2.18.0-node_9.5.0-file]
  * `docker pull sergiolepore/ember-cli:2.18.0-node_9.5.0`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.18.0-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.18.0-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.17.2

* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.17.2-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.17.2-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v6.12.3 (LTS)** | [Dockerfile][2.17.2-node_6.12.3-file]
  * `docker pull sergiolepore/ember-cli:2.17.2-node_6.12.3`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.17.1

* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.17.1-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.17.1-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v6.12.3 (LTS)** | [Dockerfile][2.17.1-node_6.12.3-file]
  * `docker pull sergiolepore/ember-cli:2.17.1-node_6.12.3`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.17.0

* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.17.0-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.17.0-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v6.12.3 (LTS)** | [Dockerfile][2.17.0-node_6.12.3-file]
  * `docker pull sergiolepore/ember-cli:2.17.0-node_6.12.3`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.16.2

* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.16.2-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.16.2-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v6.12.3 (LTS)** | [Dockerfile][2.16.2-node_6.12.3-file]
  * `docker pull sergiolepore/ember-cli:2.16.2-node_6.12.3`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.16.1

* **w/Node.js v8.9.4 (LTS)** | [Dockerfile][2.16.1-node_8.9.4-file]
  * `docker pull sergiolepore/ember-cli:2.16.1-node_8.9.4`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v6.12.3 (LTS)** | [Dockerfile][2.16.1-node_6.12.3-file]
  * `docker pull sergiolepore/ember-cli:2.16.1-node_6.12.3`
  * `Yarn v1.3.2`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.16.0

* **w/Node.js v8.4.0** | [Dockerfile][2.16.0-node_8.4.0-file]
  * `docker pull sergiolepore/ember-cli:2.16.0-node_8.4.0`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`
* **w/Node.js v6.11.3 (LTS)** | [Dockerfile][2.16.0-node_6.11.3-file]
  * `docker pull sergiolepore/ember-cli:2.16.0-node_6.11.3`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.9.0`
  * `Google Chrome stable`

### Ember-CLI v2.15.1

* **w/Node.js v8.4.0** | [Dockerfile][2.15.1-node_8.4.0-file]
  * `docker pull sergiolepore/ember-cli:2.15.1-node_8.4.0`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
  * `Google Chrome stable`
* **w/Node.js v6.11.3 (LTS)** | [Dockerfile][2.15.1-node_6.11.3-file]
  * `docker pull sergiolepore/ember-cli:2.15.1-node_6.11.3`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
  * `Google Chrome stable`

### Ember-CLI v2.15.0

* **w/Node.js v8.4.0** | [Dockerfile][2.15.0-node_8.4.0-file]
  * `docker pull sergiolepore/ember-cli:2.15.0-node_8.4.0`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
  * `Google Chrome stable`
* **w/Node.js v6.11.2 (LTS)** | [Dockerfile][2.15.0-node_6.11.2-file]
  * `docker pull sergiolepore/ember-cli:2.15.0-node_6.11.2`
  * `Yarn v0.27.5`
  * `PhantomJS v2.1.14`
  * `Watchman v4.7.0`
  * `Google Chrome stable`

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
* Port `7020` is exposed (livereload)
* Port `4200` is exposed (app)
* Port `7357` is exposed (TestEm)
* `ember server` is the default command to be run when executing the image

### `docker run` examples

```bash
# ember blueprints
$ docker run -it --rm \
  -v /my/project/directory:/myapp \
  sergiolepore/ember-cli:3.0.3-node_9.11.1 \
  ember init --yarn

$ docker run -it --rm \
  -v /my/project/directory:/myapp \
  sergiolepore/ember-cli:3.0.3-node_9.11.1 \
  ember g route hamsters
```

```bash
# yarn
$ docker run -it --rm \
  -v /my/project/directory:/myapp \
  sergiolepore/ember-cli:3.0.3-node_9.11.1 \
  yarn add something@1.2.3
```

```bash
# server
$ docker run -it \
  -v /my/project/directory:/myapp \
  -p 4200:4200 \
  -p 7020:7020 \
  sergiolepore/ember-cli:3.0.3-node_9.11.1
```

```bash
# working on Windows?
$ docker run -it \
  -v /my/project/directory:/myapp \
  -p 4200:4200 \
  -p 7020:7020 \
  sergiolepore/ember-cli:3.0.3-node_9.11.1 \
  ember server --watcher polling
```

```bash
# bash
$ docker run -it \
  -v /my/project/directory:/myapp \
  -p 4200:4200 \
  -p 7020:7020 \
  sergiolepore/ember-cli:3.0.3-node_9.11.1 \
  bash

node@container-id:/myapp# ember init --yarn
node@container-id:/myapp# ember g route hamsters
node@container-id:/myapp# yarn add something@1.2.3
node@container-id:/myapp# ember server
```

### `docker-compose` examples

* A `docker-compose.yml` file in `/my/project/directory`

```yaml
services:
  emberapp:
    image: sergiolepore/ember-cli:3.0.3-node_9.11.1
    ports:
      - "4200:4200"
      - "7020:7020"
      - "7357:7357"
    volumes:
      - .:/myapp
```

```bash
$ docker-compose run --rm emberapp ember init --yarn
```

```bash
$ docker-compose up
```


## FAQ

### How do you keep up with new versions?

Here's what I've been doing: each time a [final release of Ember-CLI gets published][ember-cli-releases-url], I check for the latest `LTS` and `Current` Node.js versions and I generate a new `Dockerfile` based on that. This ensures there will always be an up-to-date image containing the latest security patches and bugfixes from both projects. Alongside those changes, I update all dependencies to their latest version.

I'll try to keep parity between Node.js and Ember.js LTS versions for as long as possible (Ember 2.12.x - Node 6.x, for example).

### What happens with outdated Node.js versions between LTS releases?

Sorry, but when a major version of Node.js stops getting updates, I stop supporting it as well. If you think you're stuck on one of those versions, please consider upgrading to, at least, the next available LTS.

### You said this image has everything I need to work with Ember.js, but where's Bower?

Bower is now an [optional dependency since Ember-CLI 2.13][bower-ember-drop-support-url], so I decided to exclude it from my v2.13+ images. If you still need it, I recommend you to create your own custom image:

```Dockerfile
FROM sergiolepore/ember-cli:x.x.x-node_x.x.x

RUN yarn global add bower@x.x.x

### ...
```

### Where's the `latest` tag?

Sorry, but I don't believe in "latest" things :grin:. No, seriously. Be aware of the version you're working with in order to avoid headaches. Always. 🦌

### Debian Jessie is way too heavy, where's the Alpine version?

Working on it. Stay tuned.

### Since 2.16.0, `ember test -s` ends up showing a Chrome error regarding some SUID sandbox. How do I make it work?

This is one of those things that I really HATE about the Chrome integration. 

In order to fix it, you'll have to edit your `testem.js` file and configure a new argument, `--no-sandbox`, for your `mode: 'dev'`. A lot can be written about the implications, pros & cons of this, but I thought that this "solution" is the only one worth implementing. If you open the `Dockerfile`, you'll notice that there's a patch that adds `--no-sandbox` directly to the system so you don't have to add it to `testem.js`, BUT it's being ignored for some reason. If I figure out how to make it work without having to edit the Test'em file, I'll ship the patch into a **new Dockerfile**. I will not update the old ones.

> *"But my Test'em file (pre Ember 3) can only have ONE custom config and it's set to `ci`! I cannot add `dev` without losing `ci`!"* - You, probably.

This is an issue ONLY for Ember-CLI versions prior to `3.0.0`. The new Test'em allows you to have different modes with their custom, isolated args. If you are using the old Test'em, you'll have to remove the mode key entirely and just use the array of args for the `Chrome` key.

Below are the workarounds for pre and post Ember-CLI 3.

#### 3.0.0 < Ember-CLI >= 2.16.0

```js
/* eslint-env node */
module.exports = {
  // ...etc
  browser_args: {
    Chrome: [
      '--no-sandbox', // new arg for 'dev' mode. Below are the default args for 'ci'
      '--disable-gpu',
      '--headless',
      '--remote-debugging-port=0',
      '--window-size=1440,900'
    ]
  }
};

```

#### Ember-CLI >= 3.0.0

```js
module.exports = {
  // ...etc
  browser_args: {
    Chrome: {
      // common args for CI and Dev
      all: [
        '--disable-gpu',
        '--headless',
        '--remote-debugging-port=0',
        '--window-size=1440,900'
      ],
      // extra required arg for Dev (because it's running inside a container)
      dev: '--no-sandbox',
      // the default --no-sandbox for Travis CI (that's running inside a container)
      ci: [
        // --no-sandbox is needed when running Chrome inside a container
        process.env.TRAVIS ? '--no-sandbox' : null,
      ].filter(Boolean)
    }
  }
}
``` 

### I have a custom Dockerfile based on yours, and my `USER` is no longer root because of reason X. With tags between 2.16.0 and 3.0.0, `ember test -s` ends up showing an "operation not permitted" error. How do I make it work?

Versions <= 3.0.0 of this image had a weird issue with Google Chrome and `USER` in the container. Using a non-root user required a HUGE [seccomp profile][docker-docs-seccomp] to be passed to your container with **EVERY SINGLE SYSCALL** Chrome will or might perform, otherwise it will explode in your face with "operation not permitted".

Since `3.0.1`, the container runs as non-root and Chrome is finally working.

[3.0.3-node_9.11.1-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.3-node_9.11.1/Dockerfile
[3.0.3-node_8.11.1-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.3-node_8.11.1/Dockerfile
[3.0.2-node_9.11.1-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.2-node_9.11.1/Dockerfile
[3.0.2-node_8.11.1-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.2-node_8.11.1/Dockerfile
[3.0.1-node_9.11.1-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.1-node_9.11.1/Dockerfile
[3.0.1-node_8.11.1-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.1-node_8.11.1/Dockerfile
[3.0.0-node_9.5.0-experimental-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.0-node_9.5.0-experimental/Dockerfile 
[3.0.0-node_9.5.0-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.0-node_9.5.0/Dockerfile 
[3.0.0-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/3.0.0-node_8.9.4/Dockerfile
[2.18.2-node_9.5.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.18.2-node_9.5.0/Dockerfile 
[2.18.2-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.18.2-node_8.9.4/Dockerfile
[2.18.1-node_9.5.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.18.1-node_9.5.0/Dockerfile 
[2.18.1-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.18.1-node_8.9.4/Dockerfile
[2.18.0-node_9.5.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.18.0-node_9.5.0/Dockerfile 
[2.18.0-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.18.0-node_8.9.4/Dockerfile
[2.17.2-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.17.2-node_8.9.4/Dockerfile
[2.17.2-node_6.12.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.17.2-node_6.12.3/Dockerfile 
[2.17.1-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.17.1-node_8.9.4/Dockerfile
[2.17.1-node_6.12.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.17.1-node_6.12.3/Dockerfile 
[2.17.0-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.17.0-node_8.9.4/Dockerfile
[2.17.0-node_6.12.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.17.0-node_6.12.3/Dockerfile 
[2.16.2-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.16.2-node_8.9.4/Dockerfile
[2.16.2-node_6.12.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.16.2-node_6.12.3/Dockerfile 
[2.16.1-node_8.9.4-file]: https://github.com/sergiolepore/docker-ember/tree/2.16.1-node_8.9.4/Dockerfile
[2.16.1-node_6.12.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.16.1-node_6.12.3/Dockerfile 
[2.16.0-node_8.4.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.16.0-node_8.4.0/Dockerfile
[2.16.0-node_6.11.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.16.0-node_6.11.3/Dockerfile
[2.15.1-node_8.4.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.15.1-node_8.4.0/Dockerfile
[2.15.1-node_6.11.3-file]: https://github.com/sergiolepore/docker-ember/tree/2.15.1-node_6.11.3/Dockerfile
[2.15.0-node_8.4.0-file]: https://github.com/sergiolepore/docker-ember/tree/2.15.0-node_8.4.0/Dockerfile
[2.15.0-node_6.11.2-file]: https://github.com/sergiolepore/docker-ember/tree/2.15.0-node_6.11.2/Dockerfile
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
[chrome-url]: https://www.google.com/chrome/browser/
[ember-blog-chrome-url]: https://www.emberjs.com/blog/2017/09/01/ember-2-15-released.html#toc_changes-in-ember-cli-2-15
[ember-cli-releases-url]: https://github.com/ember-cli/ember-cli/releases
[bower-ember-drop-support-url]: https://www.emberjs.com/blog/2017/04/29/ember-2-13-released.html#toc_other-notable-changes
[docker-docs-seccomp]: https://docs.docker.com/engine/security/seccomp/
[jess-frazelle-chrome-seccomp-profile]: https://raw.githubusercontent.com/jfrazelle/dotfiles/master/etc/docker/seccomp/chrome.json
[ember-blog-phantom-ember3]: https://emberjs.com/blog/2018/02/14/ember-3-0-released.html#toc_browser-support-in-3-0