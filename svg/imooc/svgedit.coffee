SvgEdit = () -> 
  nameSpace = "http://www.w3.org/2000/svg"
  shapeDefultInfo =
    # 矩形
    rect:
      x: 10
      y: 10
      width: 200
      height: 100
      rx: 0
      ry: 0

    # 圆
    circle:
      cx: 200
      cy: 200
      r: 50

    # 椭圆
    ellipse:
      cx: 200
      cy: 200
      rx: 80
      ry: 30

    line:
      x1: 10
      y1: 10
      x2: 100
      y2: 100

  defaultAttrs =
    fill: "#fff"
    stroke: "#000"

  @createSVG = () ->
    svg = document.createElementNS(nameSpace, 'svg')
    $(svg).attr 
      'width': '100%'
      'height': '100%'
    $('#canvas').append svg
    svg


  @createShape = ( _svg ) ->

    # 点击按钮创建不同的图形
    $('#create').delegate 'button', 'click', ->
      shapeName = $(this).attr('shape')
      shape = document.createElementNS(nameSpace, shapeName)

      # 设置图形的一些属性
      $(shape).attr shapeDefultInfo[shapeName]
      _svg.appendChild shape

      return
    return

  # 初始化
  @init = () ->

    # 创建画布
    svg = @createSVG()

    # 创建图形
    this.createShape svg
  return

new SvgEdit().init()









