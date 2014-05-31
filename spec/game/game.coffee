#describe 'Game', ->
#	
#	Given ->
#		@a= 0;
#		@fps= 0;
#		@game = new window.Game
#			display_game:(a)=>
#				@fps += a
#			update_game:()=> 
#				@a += 1
#	describe 'can run a fixed cycle', ->
#		When ->
#			setTimeout (()=> @game.game_is_running = false;), 1000
#			@game.loop()
#		
#		Then -> 
#			waits(1000)
#			expect(@a).toBe(25)
#			expect(@fps).toBe(60)#