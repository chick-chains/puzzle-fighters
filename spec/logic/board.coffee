describe 'G.l.Board', ->
  describe "should set a blocks position",->
    Given ->
      @board = new G.l.Board({width:2,height:2})
      @block = new G.l.Block({})
    When ->
      @board.add @block
    Then ->
      expect(@block.position).not.toBeUndefined()
      expect(@block.position).toEqual(@board._startingPosition)
  describe "should start have a width and height", ->
    When ->
      @board = new G.l.Board
        width: 2
        height: 3
    Then ->
      expect(@board.getWidth()).toBe(2)
      expect(@board.getHeight()).toBe(3)
      expect(@board.getWorldWidth()).toBe(100)
      expect(@board.getWorldHeight()).toBe(150)
  context "position methods", ->
    Given ->
      @board =  new G.l.Board {width:2, height:3}
      @block = new G.l.Block({})
    describe ".add", ->
      When ->
        @board.add(@block,2,2)
      Then ->
        expect(@block.position).toEqual({x:2,y:2})
    describe ".blockAt",->
      When ->
        @board.add(@block,2,3)
      Then ->
        expect(@board.blockAt(2,3)).toEqual(@block)
        expect(@board.blockAt({x:2,y:3})).toEqual(@block)
