module.exports = (robot) ->

  robot.respond(/cat me/i, (msg) ->
    msg.http('http://cat-me.herokuapp.com/random')
      .get() (err, res, body) ->
        msg.send JSON.parse(body).cat
  )