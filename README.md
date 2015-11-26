# hubot-cybernetic [![Build Status](https://travis-ci.org/xkickflip/hubot-cybernetic.svg?branch=master)](https://travis-ci.org/xkickflip/hubot-cybernetic) [![Code Climate](https://codeclimate.com/github/xkickflip/hubot-cybernetic/badges/gpa.svg)](https://codeclimate.com/github/xkickflip/hubot-cybernetic)

Allows hubot to identify itself to users when asked what or who it is.

See [`src/cybernetic.coffee`](src/cybernetic.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-cybernetic --save`

Then add **hubot-cybernetic** to your `external-scripts.json`:

```json
[
  "hubot-cybernetic"
]
```

## Sample Interaction

```
user1>> who is hubot?
hubot>> I am Hubot. I'm a cybernetic organism. Living tissue over a metal endoskeleton. My mission is to protect you.
```
