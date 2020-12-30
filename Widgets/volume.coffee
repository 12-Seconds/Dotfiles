# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "echo Volume: && /usr/bin/osascript -e 'set ovol to output volume of (get volume settings)'"

refreshFrequency: 500 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  right: 25px
  top: 12px
  span
    color: #fff
"""
