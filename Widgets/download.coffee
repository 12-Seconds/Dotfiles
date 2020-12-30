# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "speedtest --simple --no-upload | sed -n '2 p' 2>/dev/null"

refreshFrequency: 600000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  left: 433px
  top: 12px
  span
    color: #fff
"""
