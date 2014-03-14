# Description:
#   Shows an image the specified Goonie somewhere.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   showme @joelbradbury with hobbits
#   showme @stephen in cathedral cove
#
# Author:
#   iain

module.exports = (robot) ->
  robot.respond /showme @?([\w.\-]+)\s?(with)?(.*), (msg) ->
    name = msg.match[1].trim()
    search = msg.match[3].trim()

    msg.send "http://hubot.iain.co.nz/?mark=#{name}&term=#{search}"