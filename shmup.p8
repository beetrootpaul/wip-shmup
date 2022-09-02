pico-8 cartridge // http://www.pico-8.com
version 37
__lua__
-- TODO shmup game title
-- by beetroot paul

#include build/src/common/timer/fake_timer.lua
#include build/src/common/timer/timer.lua
#include build/src/common/buttons.lua
#include build/src/common/colors.lua
#include build/src/common/font_4px.lua
#include build/src/common/gameplay_area.lua
#include build/src/common/health.lua
#include build/src/common/multicart.lua
#include build/src/common/text_4px.lua
#include build/src/common/throttle.lua
#include build/src/common/utils.lua
#include build/src/common/viewport.lua
#include build/src/common/xy.lua

#include build/src/cart_main/screen_select_mission.lua
#include build/src/cart_main/screen_title.lua

#include build/src/cart_main.lua

__gfx__
00000000bbbb11bbbbbbbb11bbbbbbbb11bbbbbbd00000000000000000000000000000000000000000000000000000000000000000000000bbb111bbbbb111bb
00000000bbb18f1bbbbbb18f1bbbbbb1df1bbbbbd08000000000000000000000000000000000000000000000000000000000000000000000bb1fff1bbb1fff1b
00700700bbb1881bbbbbb1881bbbbbb1881bbbbbd08880000000000000000000000000000000000000000000000000000000000000000000b1fdddf1b1fddff1
00077000bb1d88f1bbbb1d88f1bbbb1d88f1bbbbd08888800000000000000000000000000000000000000000000000000000000000000000b1ffdff1b1fdfdf1
00077000b1d8888f1bb1d8888f1bb1d8888f1bbb000888880000000000000000000000000000000000000000000000000000000000000000b1ffdff1b1fdddf1
00700700b1d8688f1b1d886688f1b1f8868f1bbb000008880000000000000000000000000000000000000000000000000000000000000000b1ffdff1b1fdfdf1
00000000b1d888881b1888888881b1f888881bbb000000080000000000000000000000000000000000000000000000000000000000000000bb1fff1bbb1fff1b
00000000b1dd8d881b188d8fd881b1f8d8d81bbbd00000000000000000000000000000000000000000000000000000000000000000000000bbb111bbbbb111bb
09907997bb11dd11bbb111dd111bbb11dd11bbbb0d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0ff07ff7bbbb11bbbbbbbb11bbbbbbbb11bbbbbb00dd000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07700770bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0000dd0000000000000000000000000000000000000000000000000000000000000000000000000000000000
07700000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb000000dd00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000990bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0d8d800000000000000000000000000000000000000000000000000000000000000000000000000000000000
00009ff9bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd888f80000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000f66fbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbd888880000000000000000000000000000000000000000000000000000000000000000000000000000000000
00009ff9bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0d88800000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000ff00000000000000000000000000000000000d8000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bb00b0000bb0bb00bbb0bbb00bb0b000b0bb0b0b0b00bbb0bb000bb0bbb00b00bb000bb0bbb0b0b0b0b0b0b0b0b0b0b0bbb0000000b000bbb000bbb000b00000
b0b0bb00b000b0b0bb00b000b000bb00b00b0bb00b00bbb0b0b0b0b0b0b0b0b0b0b0bb000b00b0b0b0b0b0b00b00b0b00b0000000bb00b000b0b0b0b0bbbb000
bbb0b0b0b000b0b0b000bb00b0b0b0b0b00b0b0b0b00b0b0b0b0b0b0bb00bbb0bb0000b00b00b0b0b0b0bbb0b0b00b00b000bb0000bb0b0b0b0bb0bb00b0b000
b0b0bbb00bb0bb00bbb0b0000bb0b0b0b0b00b0b0bb0b0b0b0b0bb00b0000b00b0b0bb000b00bb000b00bbb0b0b00b00bbb0000b00b00b000b0b0b0b0000b000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008bbb808bbb80000b0bb
0b0bb00bbb0b0b0bbb00b00bbb0bbb0bbb00b0000b000bbbbb000000000000000000000000000000000000000000000000000000000000888000888000000000
bb00bb00bb0b0b0bb00b00000b00b00bbb0b0b0bbbbb0b0b0b000000000000000000000000000000000000000000000000000000000000bbb000bbb000000000
0b0b00000b0bbb000b0bbb00b00b0b000b0b0b00bbb00bbbbb00000000000000000000000000000000000000000000000000000000000b000b0b0b0b00000000
0b0bbb0bbb000b0bb000b00b0000b00bb000b000b0b000b0b000000000000000000000000000000000000000000000000000000000000b0b0b0bb0bb00000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b0b0b0b00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbb000bbb000000000
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

