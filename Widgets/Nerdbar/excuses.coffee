# Highly modified nerdbar widget, from  https://www.github.com/herrbischoff/nerdbar.widget

command: "curl -silent http://developerexcuses.com |grep 'a href=\"/\"' | sed 's/<.*\">//g' | sed 's/<.*>//g'"

refreshFrequency: 5000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  right: 20px
  top: 1150px
  span
    color: #000
"""
