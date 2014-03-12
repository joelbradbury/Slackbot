# Description:
#   When Joel Bradbury hears his name, he shows us what he looks like.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   joelme - Display a thing that looks like Joel Bradbury
#
# Author:
#   monooso

joels = [
  "http://gamedayr.com/wp-content/uploads/2013/11/joakim-noah-ewok1.jpg",
  "http://airandspace.si.edu/exhibitions/star-wars/online/images/BookImages/ewok.jpg",
  "http://resources2.news.com.au/images/2012/11/27/1226524/712674-ewok.jpg",
  "http://4.bp.blogspot.com/-b1gLL8BqfTE/UPGREG0rmJI/AAAAAAAABnw/tWbimT5uANI/s1600/ewok3.jpg",
  "http://todayspetpics.files.wordpress.com/2013/01/augie-is-an-ewok-for-sure.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/7/7a/Basketball.png",
  "http://picturehouses.files.wordpress.com/2013/01/hobbit.jpg",
  "http://bestfilmsofourlives.files.wordpress.com/2012/12/movie-the-hobbit_002130021.jpeg",
  "https://www.youtube.com/watch?v=_uaU2yFC5mw#t=60"
]

module.exports = (robot) ->
  robot.hear /\b(joelme)\b/i, (msg) ->
    msg.send msg.random joels
