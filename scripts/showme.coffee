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
	robot.respond /showme @?([\w .\-_]+) (in|with) (["'\w: \-_]+)[.!]*$/i, (msg)
    name = msg.match[1].trim()
    search = msg.match[2].trim()

    msg.send "http://hubot.iain.co.nz/?mark=#{name}&term=#{search}"
