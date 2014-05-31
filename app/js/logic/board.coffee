class G.l.Board
		constructor: (opts)->
				@_startingPosition = {}
				@_width =opts.width
				@_height=opts.height
				@_worldWidth=@_width*50
				@_worldHeight=@_height*50
		add: (block)->
				block.position = _.clone(@_startingPosition)
		getWidth:-> @_width
		getHeight:-> @_height
		getWorldWidth:-> @_worldWidth
		getWorldHeight:-> @_worldHeight
