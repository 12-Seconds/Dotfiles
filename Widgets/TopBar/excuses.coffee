# Highly modified nerdbar widget, from https://www.github.com/herrbischoff/nerdbar.widget

command: "echo; curl -silent http://developerexcuses.com | grep 'a href=\"/\"' | sed 's/<.*\">//    g' | sed 's/<.*>//g'"

refreshFrequency: 5000 # ms

render: (output) ->
  "<span>Dev Excuses: #{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 17px Iosevka
  left: 400px
  top: 12px
  span
    color: #fff
"""
