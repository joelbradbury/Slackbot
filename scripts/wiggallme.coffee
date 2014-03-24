# Description:
#   Wiggall wiggall wiggall wiggall wiggall, yeah!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   wiggallme - wiggall wiggall wiggall wiggall wiggall, yeah!
#
# Author:
#   monooso

wiggalls = [
  "http://media.giphy.com/media/3f6kmlg53vCX6/giphy.gif",
  "http://media.giphy.com/media/segu0wvqUjxgQ/giphy.gif",
  "http://24.media.tumblr.com/tumblr_m5x2lezHh61rydordo1_500.gif",
  "http://24.media.tumblr.com/tumblr_lupkk6Umh81qhq3iuo1_r2_400.gif"
]

module.exports = (robot) ->
  robot.hear /\b(wiggallme)\b/i, (msg) ->
    msg.send msg.random wiggalls
