# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "networksetup -getairportnetwork en1"

refreshFrequency: 3000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  right: 300px
  top: 12px
  span
    color: #93bfce
"""
