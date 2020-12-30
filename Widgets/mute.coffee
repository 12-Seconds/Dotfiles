# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "osascript -e 'output muted of (get volume settings)'"

refreshFrequency: 500 # ms

render: (output) ->
  "<span>Muted: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  right: 130px
  top: 12px
  span
    color: #fff
"""
