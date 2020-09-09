# Modified disk usage bar, originally https://www.github.com/onishy/Ubersicht-DiskUsage-bar

command: "BLOCKSIZE=1000000 df -l"

refreshFrequency: 5000

# choose your main disk from df -l output
# disk on the first line = index 1
disk_index: 2

style: """
  // Change bar height
  bar-height = 10px

  // Align contents left or right
  widget-align = left

  // Opposite of align
  if (widget-align == left)
    widget-align-anti = right
  else
    widget-align-anti = left

  // Position this where you want
  top 1300px
  left 15px

  // Statistics text settings
  color #000
  font-family MesloLGS NF
  background rgba(#fff, 0)
  padding 0px 0px 0px
  border-radius 5px

  .container
    width: 300px
    text-align: widget-align
    position: relative
    clear: both

  .widget-title
    text-align: widget-align

  .disk-name
    float: widget-align-anti

  .widget-name
    float: widget-align

  .stats-container
    margin-bottom 5px
    border-collapse collapse

  td
    font-size: 14px
    font-weight: 300
    color: rgba(#000, .9)
    text-shadow: 0 0px 0px rgba(#000, 1)
    text-align: widget-align

  .widget-title
    font-size 15px

  .label
    font-size 15px

  .bar-container
    width: 100%
    height: bar-height
    border-radius: bar-height
    float: widget-align
    clear: both
    background: rgba(#fff, 0)
    position: absolute
    margin-bottom: 5px
    border: #000
    border-width: 2.5px
    border-radius 5px

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

  .bar-Used
    background: rgba(#88c0d0, 1)

  .bar-Available
    background: rgba(#fff, 0)

"""


render: -> """
  <div class="container">
    <div class="widget-title">
      <div class="widget-name">Disk</div>
      <div class="disk-name"></div>
    </div>
    <table class="stats-container" width="100%">
      <tr>
        <td class="label">Used</td>
        <td class="label">Available</td>
        <td class="label">Total</td>
        <td class="label">Usage</td>
      </tr>
      <tr>
        <td class="stat"><span class="Used"></span></td>
        <td class="stat"><span class="Available"></span></td>
        <td class="stat"><span class="Total"></span></td>
        <td class="stat"><span class="Usage"></span></td>
      </tr>
    </table>
    <div class="bar-container">
      <div class="bar bar-Used"></div>
      <div class="bar bar-Available"></div>
    </div>
  </div>
"""

update: (output, domEl) ->

  chooseColor = (percentage) ->
    if percentage > 90
      "rgba(#88C0D0, 1)"
    else if percentage > 80
      "rgba(#88C0D0, 1)"
    else
      "rgba(#88C0D0, 1)"

  UsageFormat = (mb) ->
    if mb > 1000
      gb = mb / 1000
      "#{parseFloat(gb.toFixed(2))}GB"
    else
      "#{parseFloat(mb.toFixed(2))}MB"

  updateStat = (sel, UsedMbs, TotalMbs) ->
    percent = (UsedMbs / TotalMbs * 100).toFixed(1)
    $(domEl).find(".#{sel}").text UsageFormat(UsedMbs)
    $(domEl).find(".bar-#{sel}").css "width", percent + "%"
    if sel == 'Used'
      $(domEl).find(".bar-#{sel}").css "background-color", chooseColor(percent)

  updateCapacity = (cap) ->
    $(domEl).find(".Usage").text cap

  lines = output.split "\n"
  mainDisk = lines[@disk_index].split(/\ +/)

  $(domEl).find(".disk-name").text mainDisk[0]

  diskName = mainDisk[0]
  TotalMbs = mainDisk[1]
  UsedMbs = mainDisk[2]
  AvailableMbs = mainDisk[3]
  capacityRatio = mainDisk[4]

  $(domEl).find(".Total").text UsageFormat(TotalMbs)

  updateStat 'Used', UsedMbs, TotalMbs
  updateStat 'Available', AvailableMbs, TotalMbs
  updateCapacity capacityRatio
