# Highly modified nerdbar widget, from  https://www.github.com/herrbischoff/nerdbar.widget

command: "du -hs ~/.Trash"

refreshFrequency: 2000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #000
  font: 15px MesloLGS NF
  right: 930px
  top: 12px
  span
    color: #fff
"""
