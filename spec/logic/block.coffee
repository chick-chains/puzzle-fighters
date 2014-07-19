describe "Block Logic", ->
  describe "Sizes", ->
    describe "should initialize with passed in values",->
      Given ->
        @block = new G.l.Block
          size:
            width:1
            height:1
      Then ->
        expect(@block.width).toBe 1
        expect(@block.height).toBe 1
    describe "should default to 1x1 block",->
      Given ->
        @block = new G.l.Block {}
      Then ->
        expect(@block.width).toBe 1
        expect(@block.height).toBe 1
      describe "should default width to 1",->
        Given ->
          @block = new G.l.Block
            size:
              width:10
        Then ->
          expect(@block.height).toBe 1
          expect(@block.width).toBe 10
      describe "sould default height to 1",->
        Given ->
          @block = new G.l.Block
            size:
              height:10
        Then ->
          expect(@block.height).toBe 10
          expect(@block.width).toBe 1

  describe "Colors", ->
    describe "black blocks", ->
      Given  ->
        @block = new G.l.Block
          color:"black"

      Then ->
        expect(@block.color).toBe("black")
        expect(@block.isPainted("black")).toBe true
        expect(@block.isPainted("red")).toBe false
        expect(@block.isPainted("green")).toBe false
        expect(@block.isPainted("white")).toBe false
        expect(@block.isPainted("blue")).toBe false


    describe "red blocks", ->
      Given ->
        @block = new G.l.Block
          color:"red"

      Then ->
        expect(@block.color).toBe("red")
        expect(@block.isPainted("red")).toBe true
        expect(@block.isPainted("black")).toBe false
        expect(@block.isPainted("green")).toBe false
        expect(@block.isPainted("white")).toBe false
        expect(@block.isPainted("blue")).toBe false

    describe "green blocks", ->
      Given ->
        @block = new G.l.Block
          color:"green"

      Then ->
        expect(@block.color).toBe("green")
        expect(@block.isPainted("green")).toBe true
        expect(@block.isPainted("red")).toBe false
        expect(@block.isPainted("black")).toBe false
        expect(@block.isPainted("white")).toBe false
        expect(@block.isPainted("blue")).toBe false

    describe "white blocks", ->
      Given ->
        @block = new G.l.Block
          color:"white"

      Then ->
        expect(@block.color).toBe("white")
        expect(@block.isPainted("white")).toBe true
        expect(@block.isPainted("black")).toBe false
        expect(@block.isPainted("green")).toBe false
        expect(@block.isPainted("red")).toBe false
        expect(@block.isPainted("blue")).toBe false

    describe "blue blocks", ->
      Given ->
        @block = new G.l.Block
          color:"blue"

      Then ->
        expect(@block.color).toBe("blue")
        expect(@block.isPainted("blue")).toBe true
        expect(@block.isPainted("black")).toBe false
        expect(@block.isPainted("green")).toBe false
        expect(@block.isPainted("white")).toBe false
        expect(@block.isPainted("red")).toBe false

    describe "can change color", ->
      Given ->
        @block = new G.l.Block
          color:"blue"
      When ->
        @block.paint("red")
      Then ->
        expect(@block.isPainted("blue")).toBe false
        expect(@block.isPainted("red")).toBe true
  describe "Breakers", ->
    describe "breakers should default to false",->
      Given ->
        @block = new G.l.Block({})
      Then ->
        expect(@block.breaker).toBe false
