# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "osx-cpu-temp"

refreshFrequency: 1500 # ms

render: (output) ->
  "<span>CPU Temperature: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  left: 30px
  top: 12px
  span
    color: #93bfce
"""
