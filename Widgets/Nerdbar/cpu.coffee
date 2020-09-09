# Highly modified nerdbar widget, from  https://www.github.com/herrbischoff/nerdbar.widget

command: "ps -A -o %cpu | awk '{s+=$1} END {print s \"%\"}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "CPU: <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  right: 350px
  top: 1107px
  span
    color: #000
"""
