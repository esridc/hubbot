# Description:
#   Retrieves dad jokes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   dad
#
# Author:
#   rhs

module.exports = (robot) ->
  robot.hear /\?dad/i, (msg) ->
    msg.http('https://icanhazdadjoke.com/slack')
          .get() (error, response, body) ->
            response = JSON.parse(body)
            if response.attachments
              msg.send response.attachments[0].fallback
            else
              msg.send "roob was here"

module.exports = (robot) ->
  robot.hear /test/i, (msg) ->
    msg.send "i now have a jenkins woohoo!"
