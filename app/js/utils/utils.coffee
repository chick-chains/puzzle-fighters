G.u = {}

G.u.mixOf = (base, mixins...) ->
  class Mixed extends base
  for mixin in mixins by -1 #earlier mixins override later ones
    for name, method of mixin::
      Mixed::[name] = method if(Mixed::[name] is undefined)
  Mixed