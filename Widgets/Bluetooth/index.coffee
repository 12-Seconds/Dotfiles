# A modified bluetooth battery bar, originally from https://www.github.com/gschrader/ubersicht-bluetooth-battery-bar

width        = '367px'
barHeight    = '10px'
labelColor   = '#000000'
usedColor    = '#d7051d'
freeColor    = '#525252'
bgColor      = '#fff'
borderRadius = '3px'
bgOpacity    = 0.9

command: """
2>/dev/null system_profiler SPBluetoothDataType | grep -E "Battery|Services" | sed "s/Services://g" | sed "s/Battery Level://g" | sed "s/Apple Wireless//g" | sed -e 's/^[ \t]*//' | paste -d" " - -
"""

refreshFrequency: 20000

style: """
  // Change bar height
  bar-height = 8px

  // Align contents left or right
  widget-align = left

  // Position this where you want
  top 1000px
  left 10px

  color #000000
  font-family MesloLGS NF
  background rgba(#000, 0)
  padding 0px 0px 0px

  .container
    width: 300px
    text-align: widget-align
    position: relative
    clear: both

  .container:not(:first-child)
    margin-top: 20px

  .widget-title
    text-align: widget-align

  .widget-title, p
    font-size 17px

  .label
    float: right

  .bar-container
    width: 100%
    height: bar-height
    border-radius: bar-height
    float: widget-align
    clear: both
    border #000
    border-width 2.5px
    border-radius 5px
    background: rgba(#fff, 0)
    position: absolute
    margin-bottom: 20px

  .bar
    height: bar-height
    float: widget-align
    transition: width .2s ease-in-out

  .bar:first-child
    if widget-align == left
      border-radius: bar-height 0 0 bar-height
    else
      border-radius: 0 bar-height bar-height 0

  .bar:last-child
    if widget-align == right
      border-radius: bar-height 0 0 bar-height
    else
      border-radius: 0 bar-height bar-height 0

  .bar-used
    background: rgba(#88C0D0, 1)
"""

renderInfo: (name, pctg) -> """
  <div class="container">
    <div class="widget-title">#{name} <span class="label">#{pctg}</span></div>
    <div class="bar-container">
      <div class="bar bar-used" style="width: #{pctg}"></div>
    </div>
  </div>
"""

update: (output, domEl) ->
  devices = output.split('\n')
  patt = /(.*?)(\d{1,3}%)/

  $(domEl).html ''
  render = @renderInfo

  for device, i in devices when device.match patt
    do (device) ->
      [match, name, pct] = device.match patt
      $(domEl).append render(name, pct)
