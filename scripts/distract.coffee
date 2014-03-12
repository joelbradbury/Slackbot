# Description:
#   Distract the specified Goon.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   distract <username>
#
# Author:
#   monooso

module.exports = (robot) ->
  robot.respond /distract @?([\w .\-]+)$/i, (msg) ->
    name = msg.match[1].trim()

  switch name
    when "iain" then query = 'tartan'
    when "jamiepittock" then query = 'craft beer'
    when "joelbradbury" then query = 'kerbal space program'
    when "low" then query = 'michelin star restaurants'
    when "garrettwinder" then message = 'cowboy boots'
    when "stephen" then message = 'audrey tautou'
    else query = 'squirrel'

  message = distract msg, query, name
  msg.send message

distract = (msg, query, name) ->
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        msg.random images
      else
        "I can't distract #{name} right now."
