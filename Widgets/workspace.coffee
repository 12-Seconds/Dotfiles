# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "yabai -m query --spaces --space | jq .index"

refreshFrequency: 300 # ms

render: (output) ->
  "<span>Workspace: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  left: 1360px
  top: 12px
  span
    color: #fff
"""
