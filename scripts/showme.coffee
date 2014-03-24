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
#   slackbot showme <username with <subject>
#   slackbot showme <username> in <place>
#
# Author:
#   iain

module.exports = (robot) ->
	robot.respond /showme @?([\w-]+)\s(with|in|at)\s(.+)$/i, (msg) ->
    name = msg.match[1].trim()
    searchString = msg.match[3].trim()

    q = mark: name, term: searchString
    msg.http('http://hubot.iain.co.nz/')
      .query(q)
      .get() (err, res, body) ->
        msg.send body