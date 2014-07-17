class window.Game

  TICKS_PER_SECOND: 25
  MAX_FRAMESKIP: 5
  SKIP_TICKS: 1000 / @::TICKS_PER_SECOND
 constructor: (args) ->
  @displayGame=args.display_game
  @updateGame=args.update_game
  console.log(args)
 loop: ()->
  next_game_tick = @getTickCount();
  @game_is_running = true;
  @interval= setInterval( (()=>
    (clearInterval(@interval);return;) unless @game_is_running
    loops = 0;
    while( @getTickCount() > next_game_tick and loops < @MAX_FRAMESKIP)
     @updateGame();
     next_game_tick += @SKIP_TICKS;
     loops++;
    interpolation = ( @getTickCount() + @SKIP_TICKS - next_game_tick ) / ( @SKIP_TICKS );
    @displayGame( interpolation )), 1)

 getTickCount:()->
  (new Date()).getTime()
