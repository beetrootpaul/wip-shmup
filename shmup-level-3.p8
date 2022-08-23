pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- todo shmup level 2
-- by beetroot paul

#include build/src/common/buttons.lua
#include build/src/common/colors.lua

_bg_color = _palette_color_dark_blue
_lvl_number = 3
_scrolling_speed = 3/8

#include build/src/level_carts/level_cart.lua
#include build/src/level_carts/player.lua
#include build/src/level_carts/screen_get_ready.lua
#include build/src/level_carts/screen_level.lua

__gfx__
000000000000aa000000aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000a0b00000a0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000b0000000b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700000000bb000000bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000000bbb00000bbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000bbbb0000bbbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bb000000bb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bb000000bb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bb000000bb000000aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000b0b00000b0b00000a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000b0000000b0000000b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000bb000000bb000000bb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bbb00000bbb00000bbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000bbbb0000bbbb0000bbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bb000000bb000000bb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bb000000bb000000bb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aa000000bb000000bb00000000000000aa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000a0a00000b0b00000b0b0000000000000a0b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000a0000000b0000000b000000000000000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000aa000000bb000000bb00000000000000bb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aaa00000bbb00000bbb0000000000000bbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000aaaa0000bbbb0000bbbb000000000000bbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aa000000bb000000bb00000000000000bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aa000000bb000000bb00000000000000bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000bb000000bb000000aa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000b0a00000b0b00000a0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000a0000000b0000000b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000aa000000bb000000bb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000aaa00000bbb00000bbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000aaaa0000bbbb0000bbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000aa000000bb000000bb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000aa000000bb000000bb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
0000ddd000000000000000000000dddd0000000dd0000dddddddddddd00c000000000020000000ddcddd00000000000000000000000000000000000000000000
00dddbd000c0cd0c000000000c00ddd0dd00000dd0b00dd0ddd00ddd002000c0000000000000000ddd7000000000000000000000d0000b00000000000020020d
0dddddd0000ddd00000000000ddddd00ddd0000d00000d00d00020d70000000000000000000000000000000000000000000b002d7d00000200000000000000dd
0ddbddd00cdcdc00000dd020d2dddd00ddd0b0000dd00000020007d0dd002000000002000000000000000c00ddd000020000000ddd00200000000000000020dd
0dddddd000ddcd00000dd000ddd00020ddd000000ddd00000000ddd2ddd0000c000000dd000000000c00000dd7dd000000200000d0200000000000000200000d
00dddd0000c000c0000dd0000000c000dd000000dddd0d00ddddddddddddd0002000dddd00000000000000dddddd00200200000b200000b00000000000000020
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
ddddd0000000dddd0000dddd0000000dd0000dddddddddddd00c000000000020000000ddcddd00000000ddd000000000000000000000dddd0000000dd0000ddd
ddddd00000c0000d0c00ddd0dd00000dd0b00dd0ddd00ddd002000c0000000000000000ddd70000000dddbd000c0cd0c000000000c00ddd0dd00000dd0b00dd0
ddd00000000000000ddddd00ddd0000d00000d00d00020d7000000000000000000000000000000000dddddd0000ddd00000000000ddddd00ddd0000d00000d00
dd0000c000000000d2dddd00ddd0b0000dd00000020007d0dd002000000002000000000000000c000ddbddd00cdcdc00000dd020d2dddd00ddd0b0000dd00000
dd0c0000d0000000ddd00020ddd000000ddd00000000ddd2ddd0000c000000dd000000000c00000d0dddddd000ddcd00000dd000ddd00020ddd000000ddd0000
d0000000ddd000c00000c000dd000000dddd0d00ddddddddddddd0002000dddd00000000000000dd00dddd0000c000c0000dd0000000c000dd000000dddd0d00
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
000000000000000000000000000000000000dddd0000000dd0000ddddddddddd000000000000000000dddd0000d000000dddd00000ddd00000dddd0000ddd008
0000000000000000d0000b00000000000c00ddd0dd00000dd0b00dd0ddd00ddd000dd00000ddd00000000d0000d000000d0000000dd0000000000d0000d0d008
00000000000b002d7d000002000000000ddddd00ddd0000d00000d00d00020d70dddd0000000d000000ddd0000ddddd000ddddd00d0000000000d00000dd0008
ddd000020000000ddd00200000000000d2dddd00ddd0b0000dd00000020007d00000d000000dd00000000d0000000d0000000dd00dddddd00000d0000d00d008
d7dd000000200000d020000000000000ddd00020ddd000000ddd00000000ddd20000d0000ddddd000000dd0000000d000000dd000d0000d00000d0000d0dd008
dddd00200200000b200000b0000000000000c000dd000000dddd0d00dddddddd00000000000000000ddd000000000d0000ddd0000dddddd00000d0000ddd0008
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055505550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055355555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000005355555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000005333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055bb3330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000550b33b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000005000b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004800f800ffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff
__sfx__
000100002365027650296502b6502b6502b6502b650256501f6501465007650036500365004650056500a6500d650156501a6501b650186500065002650036500565005650046500365003650086501165019650
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0004000022150271502e150301503015030150301502e150271501f1501b1501d1502215024150271502b1502e150301503315000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0010000000000366503b6503d6503965031650276501e65010650176501d65017650136500e6500f650106500f65017650246502c650376503f650000000000000000000000000038650316501b6501365017650
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000c0000371503715037150371503715037150371500315005150071500c150111501815018150161501615016150181501d150221502915029150291502e1502e150331503515037150371503a1503a1503a150
__music__
04 14424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
04 1e424344

