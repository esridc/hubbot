# Description:
#   Retrieves Kanye quotes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   kanye
#
# Author:
#   rhs

module.exports = (robot) ->
  robot.hear /yeezy$/i, (msg) ->
    msg.send "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    msg.http('https://api.kanye.rest/')
          .get() (error, response, body) ->
            response = JSON.parse(body)
            if response.quote
              msg.send response.quote
            else
              msg.send "Poop de scoop"
