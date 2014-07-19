class G.l.Block
  constructor: (obj)->
    @color=obj.color
    if obj.size isnt undefined
      if (@width = obj.size.width) is undefined then @width = 1
      if (@height = obj.size.height) is undefined then @height = 1
    else
      @width=1
      @height=1

    @breaker = false

  isPainted: (color)->
    @color==color

  paint:(color)->
    @color=color
