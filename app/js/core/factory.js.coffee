G.f.Factory=
  create_board:(opts)->
    board_l = new G.l.Board(opts)
    board_v = new G.v.Board(_.merge opts,{board: board_l})
    [logic: board_l, view:board_v]
