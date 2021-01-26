---
title: Build a Chrome extension with Figwheel Main
date: 2021-01-12T23:54:31+08:00
lastmod: 2021-01-12T23:54:31+08:00
author: g1eny0ung
avatar: /me/yy.jpg
cover: /img/cover.jpg
categories:
  - ENG
tags:
  - Chrome Extension
  - ClojureScript
  - Figwheel Main
draft: true
---

Bring a smooth experience to the development of Chrome Extension.

<!--more-->

## Before starting

Several years ago, I developed a chrome extension with ClojureScript,
which named [GitHub Colorful Contributions](https://github.com/g1eny0ung/github-colorful-contributions-graph).

That was the first time I have used [lein-figwheel](https://github.com/bhauman/lein-figwheel), a tool that can give you an extremely smooth live hot reloading in development.

I am deeply attracted by it. It also has great info feedback (Tips for successful reload) and a built-in ClojureScript REPL (Use repl to send the code to the browser). If you come from other languages (Not Clojure and ClojureScript), I believe you will like everything that lein-figwheel brings you very much.

Below is the screenshot from lein-figwheel README, It can reflect the **great info feedback** just mentioned:

![Figwheel heads up example](https://s3.amazonaws.com/bhauman-blog-images/figwheel_image.png)

These are the general benefits of lein-figwheel.

Back to the topic, in this post, we are going to use [Figwheel Main](https://figwheel.org/), a brand new upgraded version of lein-figwheel, to build a chrome extension.
There will be some differences from regular web development that require our special attention. But don't worry, I will point out them later.

Let's start.

## Setup

Assuming you have [lein](https://leiningen.org/) installed, then open <https://rigsomelight.com/figwheel-main-template/> and copy the `new` command to your shell:

```sh
lein new figwheel-main hello-world.core -- +npm-bundle --reagent # or --rum, --react or nothing
```
