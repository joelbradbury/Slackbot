# Description:
#   Get up off a that thing.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   good god help me - Shred some rugs
#   watch me - I got it
#   superbad - I got soul
#
# Author:
#   monooso

module.exports = (robot) ->
  robot.hear /\b((good god,? help me)|(watch me)|(superbad))\b/i, (msg) ->
    q = v: '1.0', rsz: '8', q: 'james brown dancing', safe: 'active', imgtype: 'animated'
    msg.http('http://ajax.googleapis.com/ajax/services/search/images')
      .query(q)
      .get() (err, res, body) ->
        images = JSON.parse(body)
        images = images.responseData?.results
        if images?.length > 0
          image = msg.random images
          msg.send image.unescapedUrl
        else
          msg.send "I can't go on"
