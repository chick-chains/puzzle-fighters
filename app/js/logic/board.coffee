class G.l.Board

	constructor: ()->
		@_startingPosition = {}

	add: (block)->
		block.position = _.clone(@_startingPosition);
		