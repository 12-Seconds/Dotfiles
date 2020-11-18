# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "date +\"%T\""

refreshFrequency: 500 # ms

render: (output) ->
  "<span>Time: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  left: 1220px
  top: 12px
  span
    color: #fff
"""
