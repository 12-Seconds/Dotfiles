# Highly modified nerdbar widget, from  https://www.github.com/herrbischoff/nerdbar.widget

command: "/usr/local/bin/osx-cpu-temp"

refreshFrequency: 30000 # ms

render: (output) ->
  "CPU Temp: <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  right: 60px
  top: 1107px
  span
    color: #000
"""
