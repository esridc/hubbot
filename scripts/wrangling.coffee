module.exports = (robot) ->

#  robot.hear /wranglin(g*)/i, (msg) ->
#    num = Math.floor(Math.random() * 5)
#    result = switch num
#      when 0 then "http://giphygifs.s3.amazonaws.com/media/CbY83hpLkcrZe/giphy.gif"
#      when 1 then "https://media.giphy.com/media/wRKeX8o1eIxxu/giphy.gif"
#      when 2 then "https://media.giphy.com/media/Tj9dXewWHCse1EiQWR/giphy.gif"
#      when 3 then "https://media.giphy.com/media/ukqwi7Shna63K/giphy.gif"
#      when 4 then "https://media.giphy.com/media/QvGz2w3WmqJwE7meQC/giphy.gif"
#    msg.send(result)


  robot.hear /tester/i, (msg) ->
    num = Math.floor(Math.random() * 11)
    v = Math.floor(Math.random() * 10000)
    result = switch num
      when 0 then "https://media.giphy.com/media/629l2uUvy0uyc/giphy.gif"
      when 1 then "https://media.giphy.com/media/2EibPB1gfjHy0/giphy.gif"
      when 2 then "https://media.giphy.com/media/quXLseRWeh928/giphy.gif"
      when 3 then "https://media.giphy.com/media/P4SxYsjDqQwM0/giphy.gif"
      when 4 then "https://media.giphy.com/media/P4SxYsjDqQwM0/giphy.gif"
      when 5 then "https://media.giphy.com/media/LrmU6jXIjwziE/giphy.gif"
      when 6 then "https://media.giphy.com/media/sXX6ZPYWMNkwU/giphy.gif"
      when 7 then "https://media.giphy.com/media/6LG8fcerztuxy/giphy.gif"
      when 8 then "https://media.giphy.com/media/g7GKcSzwQfugw/giphy.gif"
      when 9 then "https://media.giphy.com/media/lgcUUCXgC8mEo/giphy.gif"
      when 10 then "https://media.giphy.com/media/4SoPtOQAOANMs/giphy.gif"
    msg.send(result + "?v=" + v)
