# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "speedtest --simple --no-download | sed -n '3 p' 2>/dev/null"

refreshFrequency: 600000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  left: 687px
  top: 12px
  span
    color: #fff
"""
