# Modified outdated brew formulae widgets, originally https://www.github.com/gregmajor/ubersicht-outdated-brew-formulae-widget

command: "/usr/local/bin/brew update > /dev/null && /usr/local/bin/brew outdated"

refreshFrequency: 36000

style: """
  // Position the widget on your screen
  top 650px
  right 10px

  // Change the style of the widget
  color #000
  border #000
  border-width 2.5px
  font-family MesloLGS NF
  background rgba(#000, 0)
  padding 10px 10px 5px
  border-radius 5px

  .container
    position: relative
    clear: both

  .list
    padding-top: 3px
    width=100%

  .list-item
    font-size: 13px
    font-weight: 300
    color: rgba(#000, 1)
    text-shadow: 0 0px 0px rgba(#000, .7)

  .widget-title
    font-size 15px
    text-transform uppercase
"""

render: -> """
  <div class="container">
    <div class="widget-title">Outdated Brew Formulae</div>
    <div id="formulae" class="list">
    </div>
  </div>
"""

update: (output, domElement) ->

  domElement.innerHTML = '<div class="container"><div class="widget-title">Outdated Brew Formulae<br>----------------------</div><div id="formulae" class="list"></div></div>'

  formulae = output.split('\n')
  list = $(domElement).find('#formulae')

  addFormula = (formula) ->
    item = "<div class=\"list-item\">#{formula}</div>"
    list.append item

  if formulae.length == 0
    addFormula "No outdated formulae!"
  else
    for formula, i in formulae
      addFormula formula
