module.exports = (robot) ->

  robot.hear /wrangling/i, (msg) ->
    num = Math.floor(Math.random() * 5)
    result = switch num
      when 0 then "http://giphygifs.s3.amazonaws.com/media/CbY83hpLkcrZe/giphy.gif"
      when 1 then "https://media.giphy.com/media/wRKeX8o1eIxxu/giphy.gif"
      when 2 then "https://media.giphy.com/media/Tj9dXewWHCse1EiQWR/giphy.gif"
      when 3 then "https://media.giphy.com/media/ukqwi7Shna63K/giphy.gif"
      when 4 then "https://media.giphy.com/media/QvGz2w3WmqJwE7meQC/giphy.gif"
    msg.send(result)
