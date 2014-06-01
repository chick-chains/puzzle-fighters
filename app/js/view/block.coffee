class G.v.Block
  constructor:(@block)->
    @shape = new createjs.Shape()

  update:->


  draw:->
    @shape.graphics.beginFill(@block.color)
    .drawRect(@block.position.x*50,@block.position.y*50,
              @block.width*50,@block.height*50)
