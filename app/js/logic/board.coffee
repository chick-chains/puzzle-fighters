class G.l.Board
		constructor: (opts)->
				@_startingPosition = {x: 0, y:0}
				@_width =opts.width
				@_height=opts.height
				@_worldWidth=@_width*50
				@_worldHeight=@_height*50
				@_matrix =( new Array(@_width) for x in [1..@_height])
		add: (block,_x,_y)->
				if _x == _y == undefined
					block.position = _.clone(@_startingPosition)
				else
					block.position = {x:_x,y:_y}
				@_matrix[block.position.x][block.position.y] = block
		blockAt: (x,_y)->
			return @_matrix[x.x][x.y] unless _y
			return @_matrix[x][_y]

		getWidth:-> @_width
		getHeight:-> @_height
		getWorldWidth:-> @_worldWidth
		getWorldHeight:-> @_worldHeight
