G.f.Factory=
  create_board:(opts)->
    board_l = new G.l.Board(opts)
    board_v = new G.v.Board(_.merge opts,{board: board_l})

    logic: board_l
    view: board_v

  create_block: (opts)->
    block_l = new G.l.Block(opts)
    block_v = new G.v.Block(block_l)

    logic: block_l
    view: block_v
