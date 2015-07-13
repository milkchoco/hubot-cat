# Description:
#   Send the url of Cat Pictures
#
# Commands:
#   hubot cat me - cat picture url


module.exports = (robot) ->

  robot.respond(/cat me/i, (msg) ->
    msg.http('http://cat-me.herokuapp.com/random')
      .get() (err, res, body) ->
        msg.send JSON.parse(body).cat
  )