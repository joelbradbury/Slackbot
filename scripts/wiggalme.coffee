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
  "http://media.giphy.com/media/3f6kmlg53vCX6/giphy.gif",
  "http://media.giphy.com/media/segu0wvqUjxgQ/giphy.gif",
  "http://24.media.tumblr.com/tumblr_m5x2lezHh61rydordo1_500.gif",
  "http://24.media.tumblr.com/tumblr_lupkk6Umh81qhq3iuo1_r2_400.gif"
]

module.exports = (robot) ->
  robot.hear /\b(wiggalme)\b/i, (msg) ->
    msg.send msg.random wiggals
