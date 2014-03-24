# Description:
#   Wiggal wiggal wiggal wiggal wiggal, yeah!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   wiggalme - Wiggal wiggal wiggal wiggal wiggal, yeah!
#
# Author:
#   monooso

wiggals = [
  "http://media.giphy.com/media/3f6kmlg53vCX6/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /\b(wiggalme)\b/i, (msg) ->
    msg.send msg.random wiggals
