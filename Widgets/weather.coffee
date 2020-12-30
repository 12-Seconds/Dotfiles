# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "ansiweather -w false -h false -s false -d false -a false -l dubai -p false -i false | cut -c 20-"

refreshFrequency: 900000 # ms

render: (output) ->
  "<span>Weather: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  left: 1897px
  top: 12px
  span
    color: #fff
"""
