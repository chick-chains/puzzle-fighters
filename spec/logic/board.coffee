describe "Board Logic", ->
  describe "should set a blocks position",->
    Given ->
      @board = new G.l.Board({})
      @block = new G.l.Block({})
    When ->
      @board.add @block
    Then ->
      expect(@block.position).not.toBeUndefined()
      expect(@block.position).toEqual(@board._startingPosition)
  describe "should start have a width and height", ->
    When( -> @board = new G.l.Board(
              width: 2
              height: 3))
    Then ->
      expect(@board.getWidth()).toBe(2)
      expect(@board.getHeight()).toBe(3)
      expect(@board.getWorldWidth()).toBe(100)
      expect(@board.getWorldHeight()).toBe(150)
