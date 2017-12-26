$(window).on 'load', ->
  mousedown = false
  brushSize = prompt('brush size')

  canvas = $("canvas")[0]
  canvas.width = window.innerWidth
  canvas.height = window.innerHeight

  document.addEventListener 'mousedown', ->
    mousedown = true
    console.log mousedown

  document.addEventListener 'mouseup', ->
    mousedown = false
    console.log mousedown

  document.addEventListener 'mousemove', (e) ->
    mousePos = getMousePos canvas, e
    posX = mousePos.x
    posY = mousePos.y
    draw canvas, posX, posY

  getMousePos = (canvas, e) ->
    rect = canvas.getBoundingClientRect()
    return {
      x: e.clientX - rect.left,
      y: e.clientY - rect.top
    }

  draw = (canvas, posX, posY) ->
    context = canvas.getContext '2d'
    if mousedown
      console.log(posX, posY)
      context.fillStyle = 'white'
      context.fillRect posX, posY, brushSize, brushSize

  resize = ->
    canvas.width = window.innerWidth
    canvas.height = window.innerHeight

