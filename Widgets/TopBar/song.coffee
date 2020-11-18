# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "/usr/local/bin/mpc current"

refreshFrequency: 500 # ms

render: (output) ->
  "<span>Current song: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  right: 260px
  top: 12px
  span
    color: #fff
"""
