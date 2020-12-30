# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "brew update > /dev/null 2>&1 && brew outdated 2>/dev/null | wc -l"

refreshFrequency: 900000 # ms
render: (output) ->
  "<span>Outdated packages: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  right: 295px
  top: 12px
  span
    color: #fff
"""
