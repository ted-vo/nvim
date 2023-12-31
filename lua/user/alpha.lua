local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                                                                                                    ]],
	[[                                 .^^.                          .^^.                                 ]],
	[[                               ^Y~..!P                        P!..~Y^                               ]],
	[[                              ?5  5  #!^~!!!!!!!!!!!!!!!!!!~^!#  5  5?                              ]],
	[[                             !P .B@. P7.                    .7P .@B  P!                             ]],
	[[                            :B  5&@!    :^^~7Y5YJ??777!~~^^:    !@&?  B:                            ]],
	[[                            B: ??&@G   :#!7YJ~::...::::::::!:   G@&?? :B                            ]],
	[[                           JY :5:@@&7B? :~:  ^JPP5Y5555YJJ   ?B7@@@:5: YJ                           ]],
	[[                          .B  PJ.#&@@#^  :~7?JJJJ?????????!. :#@@@&.JP  B.                          ]],
	[[                         :G. ~G. :#&J .55J?!!~^^^^^^^^~!?7JGY. J&&Y .G~ .G:                         ]],
	[[                        .B.  !^  .7. 7B5?7:               !?P#? .!.  ^!  .B.                        ]],
	[[                        P!   :.   .7PGJ?^                  ^?JGG7.   .:   !P                        ]],
	[[                       G~   ^.   ~5J7!^.                    .^!?YP!   .^   ~G                       ]],
	[[                      :B   :.   :Y!:   ^7J5Y?YY77..77YY?Y5J7^   :!Y^   .:   B:                      ]],
	[[                      ^P   ^    7~    ^.  .^JJYB@&&@BYJJ^.  .^    ~?    ^   P^                      ]],
	[[                      :B  ::  .:!    !G! .   .^!&@@#!^.   . !G!    !^.  ::  B:                      ]],
	[[                       ~5 ~?  !7^     Y&75~~^!:J&@@&?:!^~~57&Y     ^?7  ?~ 5~                       ]],
	[[                        G.:&  5!?       ~!!^. ?&&&&&&? .^!!~       ??5  &:.G                        ]],
	[[                        7? P: P^P.  :. ..:^..Y55B&&B55Y.:^:.. .:  .P!5 :P ?7                        ]],
	[[                         ?7.  ~^G^ .J7!7J&&&&&#GB##BG#&&&&&J!!7J. ^G~:   .G                         ]],
	[[                          .!?. .7P  5#5B!!J55P5Y5##5Y5P55J7!B5#5  P7.  Y^77                         ]],
	[[                            .Y^  B.  55?B? .J:~ :^^: ~^J. J#75P  .B.: !G.G                          ]],
	[[                              Y! !5   :J!BY:##@B@&&@B@##:5#!J:   5!..^~ Y~                          ]],
	[[                               P: ~!~.  7?#J:J#P&#G&P#Y:J#77    !7 .^^ !Y                           ]],
	[[                               .77: !GY^ ^!P!::.^:.^.::7P!^ ^~~^:..::^7~                            ]],
	[[                                  ?!: .P5  .?G##BGGB##G?.   ...^~~!!7~^~                            ]],
	[[                                    :Y: ^?.   .:~~~~:.   .7. :Y:.7?J7:                              ]],
	[[                                      J7  ..            ..  7?                                      ]],
	[[                                       ^Y:                :Y^                                       ]],
	[[                                         ~7~:.        .:~7~                                         ]],
	[[                                            :~!!^::^!!~:                                            ]],
	[[                                                .::.                                                ]],
	[[                                                                                                    ]],
	[[                                                                                                    ]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
	dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
	return "tedvo.dev"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
