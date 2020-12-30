# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "osx-cpu-temp"

refreshFrequency: 1500 # ms

render: (output) ->
  "<span>CPU Temperature: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #fff
  font: 17px Iosevka
  left: 27px
  top: 12px
  span
    color: #fff
"""
