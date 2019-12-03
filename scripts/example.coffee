module.exports = (robot) ->
  robot.hear /open the (.*) doors/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.send "I'm afraid I can't let you do that."
