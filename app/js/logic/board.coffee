class G.l.Board
  constructor: (opts)->
    @startingPosition = {x: 0, y:0}
    @width =opts.width
    @height=opts.height
    @worldWidth=@width*50
    @worldHeight=@height*50
    @_matrix =( new Array(@width) for x in [1..@height])

  add: (block,_x,_y)->
    if _x == _y == undefined
      block.position = _.clone(@startingPosition)
    else
      block.position = {x:_x,y:_y}
    @_matrix[block.position.x][block.position.y] = block

  blockAt: (x,_y)->
    return @_matrix[x.x][x.y] unless _y
    return @_matrix[x][_y]
