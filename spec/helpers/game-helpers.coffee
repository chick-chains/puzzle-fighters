class root.MockClock

	constructor: (@timeListeners)->
	step:(ms)->
		tl.update(ms) for tl in @timeListeners

