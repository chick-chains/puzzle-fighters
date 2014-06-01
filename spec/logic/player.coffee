describe 'G.l.Player', ->
  describe 'constructor', ->
    Given ->
      @player = new G.l.Player()
    Then ->
      expect(@player.board).not.toBeUndefined()
