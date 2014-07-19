class G.v.Block
  constructor:(@block)->
    @shape = new createjs.Shape()

  update:->


  draw:->
    graphics= @shape.graphics
    if @block.color isnt 'white'
      graphics.beginFill(@block.color)
    else
      graphics.beginStroke('black')
    graphics.drawRect(@block.position.x*50,@block.position.y*50,
              @block.width*50,@block.height*50)
