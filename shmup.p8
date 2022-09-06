pico-8 cartridge // http://www.pico-8.com
version 37
__lua__
-- TODO shmup game title
-- by beetroot paul

#include build/src/third_party/easingcheatsheet.lua

#include build/src/common/movement/movement_fixed_factory.lua
#include build/src/common/movement/movement_line_factory.lua
#include build/src/common/movement/movement_sequence_factory.lua
#include build/src/common/movement/movement_sinusoidal_factory.lua
#include build/src/common/movement/movement_stationary_factory.lua
#include build/src/common/movement/movement_to_target_factory.lua
#include build/src/common/timer/fake_timer.lua
#include build/src/common/timer/timer.lua
#include build/src/common/buttons.lua
#include build/src/common/colors.lua
#include build/src/common/fade.lua
#include build/src/common/gameplay_area.lua
#include build/src/common/health.lua
#include build/src/common/multicart.lua
#include build/src/common/throttle.lua
#include build/src/common/utils.lua
#include build/src/common/viewport.lua
#include build/src/common/xy.lua

#include build/src/cart_main/screen_brp.lua
#include build/src/cart_main/screen_select_mission.lua
#include build/src/cart_main/screen_title.lua

#include build/src/cart_main.lua

__gfx__
00000000bbbb11bbbbbbbb11bbbbbbbb11bbbbbbdbbbbbbb0000000000000000000000000000000000000000000000000000000000000000bbb111bbbbb111bb
00000000bbb18f1bbbbbb18f1bbbbbb1df1bbbbbdb8bbbbb0000000000000000000000000000000000000000000000000000000000000000bb1fff1bbb1fff1b
00700700bbb1881bbbbbb1881bbbbbb1881bbbbbdb888bbb0000000000000000000000000000000000000000000000000000000000000000b1fdddf1b1fddff1
00077000bb1d88f1bbbb1d88f1bbbb1d88f1bbbbdb88888b0000000000000000000000000000000000000000000000000000000000000000b1ffdff1b1fdfdf1
00077000b1d8888f1bb1d8888f1bb1d8888f1bbbbbb888880000000000000000000000000000000000000000000000000000000000000000b1ffdff1b1fdddf1
00700700b1d8688f1b1d886688f1b1f8868f1bbbbbbbb8880000000000000000000000000000000000000000000000000000000000000000b1ffdff1b1fdfdf1
00000000b1d888881b1888888881b1f888881bbbbbbbbbb80000000000000000000000000000000000000000000000000000000000000000bb1fff1bbb1fff1b
00000000b1dd8d881b188d8fd881b1f8d8d81bbbdbbbbbbb0000000000000000000000000000000000000000000000000000000000000000bbb111bbbbb111bb
09907997bb11dd11bbb111dd111bbb11dd11bbbbbdbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
0ff07ff7bbbb11bbbbbbbb11bbbbbbbb11bbbbbbbbddbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
07700770bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbddbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
07700000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbdd00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbb99bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd8d8bbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbb9ff9bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd888f8bb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbf66fbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd88888bb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbb9ff9bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd888bbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbffbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd8bbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbb99bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
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
00000000000ss00ss00ss0sss0sss00000000000000000sss0000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000s000s000s0s0s0s0s000000000000s00000000s0000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000sss0s000s0s0ss00ss000000000000000000sss0000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000s0s000s0s0s0s0s000000000000s000000s000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ss000ss0ss00s0s0sss00000000000000000sss0000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ss00s0s0sss0sss0sss0sss00000000000000000sss000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000s0s0s0s0sss0s0s0s000s0s000000s000000000000s000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000s0s0s0s0s0s0ss00ss00ss00000000000000sss00ss000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000s0s0s0s0s0s0s0s0s000s0s000000s000000000000s000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000s0s00ss0s0s0sss0sss0s0s00000000000000000sss000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000s000sss0s0s0sss0s0000000ss000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000s000s000s0s0s000s00000000s000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000s000ss00s0s0ss00s00000000s000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000s000s000sss0s000s00000000s000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000sss0sss00s00sss0sss00000sss00000000000000000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000010001110101011101000000011100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000010001000101010001000000000100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000010001100101011001000000011100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000010001000111010001000000010000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000011101110010011101110000011100000000000000000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000010001110101011101000000011100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000010001000101010001000000000100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000010001100101011001000000001100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000010001000111010001000000000100000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000011101110010011101110000011100000000000000000000000000000000000000000000000000000000000000000000000
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

__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004800f800ffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff
