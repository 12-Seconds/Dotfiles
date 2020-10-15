# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "istats fan --value-only | tail -c +6"

refreshFrequency: 1500 # ms

render: (output) ->
  "<span>Fan speed: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  left: 270px
  top: 12px
  span
    color: #93bfce
"""
