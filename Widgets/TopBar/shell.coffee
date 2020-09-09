# Highly modified nerdbar widget, from  https://www.github.com/herrbischoff/nerdbar.widget

command: "echo $SHELL"

refreshFrequency: 360000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  right: 1580px
  top: 12px
  span
    color: #fff
"""
