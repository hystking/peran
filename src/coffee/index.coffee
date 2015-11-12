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
        ki33Player.playVideo()

renderHi1032u2ruMari53 = do ->
  ctx = hi1032u2ruMari53.getContext "2d"

  drawMari53 = (x_frac, y_frac, scale) ->
    x = x_frac * common.video.width
    y = y_frac * common.video.height
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
    drawMari53 .45, .5, .04 * videoTime 

do renderMas9edMari53 = do ->
  ctx = mas9edMari53.getContext "2d"
  (videoTime) ->
    ctx.save()
    ctx.drawImage mari53, 0, 0
    ctx.drawImage shadow, 0, 0
    ctx.globalCompositeOperation = "destination-in"
    ctx.drawImage mask, 0, 0
    ctx.restore()

do rountine = ->
  videoTime = ki33Player?.getCurrentTime?() or 0
  renderMas9edMari53 videoTime
  renderHi1032u2ruMari53 videoTime
  requestAnimationFrame rountine
