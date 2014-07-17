class G.v.Layout
  constructor:()->

    @stage = new createjs.Stage("game_container")

    background = new createjs.Shape()
    background.graphics.beginFill("#ff0000").drawRect(0, 0, 100, 200)
    @stage.addChild(background)
    @stage.update()
  draw:->
