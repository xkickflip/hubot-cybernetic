# Description
#   Allows hubot to identify itself to users when asked who or what it is.
#
# Configuration:
#  None
#
# Commands:
#   hubot who are you?  - hubot identifies itself
#   hubot what are you? - hubot identifies itself
#   who is hubot?       - hubot idenfities itself
#   what is hubot?      - hubot identifies itself
#   what's a hubot?     - hubot identifies itself
#
# Notes:
#  Just a fun little script to get me started with Hubot scripts.
#
# Author:
#   Chris Coveney <xkickflip@gmail.com>

module.exports = (robot) ->

  responseString = "I am #{robot.name}. I'm a cybernetic organism. Living tissue
                    over a metal endoskeleton. My mission is to protect you."

  robot.respond /(who|what) are you/i, (res) ->
    res.send responseString

  hearRegExp = new RegExp "(who|what|what's) (is|a) #{robot.name}", "i"
  robot.hear hearRegExp, (res) ->
    res.send responseString

