class G.v.Board
  constructor:(opts)->
    _.each ['board'], (e)=> @[e]=opts[e]
    @container = new createjs.Container()
    @_calculate_ratio(opts.real_width,opts.real_height)
    opts.stage.addChild(@container)
    @draw_grid()
  draw:->


  draw_grid: ->
    @container.addChild(@draw_vertical(x)) for x in [0..@board.width+1]
    @container.addChild(@draw_horizontal(y)) for y in [0..@board.height]

  draw_horizontal:(y)->
    @draw_line(0,y*@_y_ratio,@board.width*@_x_ratio, 1)
  draw_vertical:(x)->
    @draw_line(x*@_x_ratio,0,1, @board.height*@_y_ratio )
  draw_line:(x,y,width,height)->
    line = new createjs.Shape()
    line.graphics.beginFill("red").drawRect(x,y,width,height)
    line

  _calculate_ratio:(real_width,real_height)->
    @_x_ratio = real_width/ @board.width
    @_y_ratio = real_height/ @board.height
