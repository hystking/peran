# my sweet code is here
common = require "common"
youtubeAPI = do require "./utils/youtube-api"

ki33Player = null

youtubeAPI.load().then (YT) ->
  ki33Player = new YT.Player "ki33PlayerDom",
    width: common.video.width
    height: common.video.height
    videoId: "-H4ScMBX8FU"
    playerVars:
      rel: 0
      showinfo: 0
    events:
      onReady: ->
        console.log ki33Player
        ki33Player.playVideo()

renderHi1032u2ruMari53 = do ->
  ctx = hi1032u2ruMari53.getContext "2d"

  drawMari53 = (x, y, scale) ->
    mari53Width = common.mari53.width * scale
    mari53Height = common.mari53.height * scale
    ctx.drawImage(
      mas9edMari53
      0, 0
      common.mari53.width, common.mari53.height
      x - mari53Width / 2, y - mari53Height / 2
      mari53Width, mari53Height
    )

  (videoTime) ->
    ctx.clearRect 0, 0, common.video.width, common.video.height
    drawMari53 0, 0, .5

do renderMas9edMari53 = ->
  ctx = mas9edMari53.getContext "2d"
  ctx.drawImage mari53, 0, 0
  ctx.globalCompositeOperation = "destination-in"
  ctx.drawImage mask, 0, 0

do rountine = ->
  renderHi1032u2ruMari53 ki33Player?.getCurrentTime?() or 0
  requestAnimationFrame rountine
