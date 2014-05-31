G = exports? and exports or @G = {}


G.mixOf = (base, mixins...) ->
  class Mixed extends base
  for mixin in mixins by -1 #earlier mixins override later ones
    for name, method of mixin::
      Mixed::[name] = method
  Mixed


class G.Controller
 constructor: ()->
 
