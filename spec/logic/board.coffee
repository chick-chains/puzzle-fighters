describe "Board Logic", -> 
	Given -> 
			@board = new G.l.Board()
	
	describe "should set a blocks position",->
		Given -> 
			@block = new G.l.Block({})
		When ->
			@board.add @block
		Then ->
			expect(@block.position).not.toBeUndefined()
			expect(@block.position).toEqual @board._startingPosition