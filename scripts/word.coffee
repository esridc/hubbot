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
  robot.hear /\?word$/i, (msg) ->
    msg.send "https://www.merriam-webster.com/word-of-the-day"
