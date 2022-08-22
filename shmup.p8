pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- todo game title
-- by beetroot paul

-- TODO: ???
--#include libs/pecs/pecs.lua

#include build/src/main.lua

-->8
-- misc

#include build/src/misc/buttons.lua
#include build/src/misc/colors.lua

-- TODO: ???
-->8
-- poc
#include build/src/poc/screen_poc.lua
#include build/src/poc/level.lua
#include build/src/poc/player.lua

-->8
-- gameplay

-- TODO: ???
--#include build/src/gameplay/gameplay.lua

-->8
-- screens

-- TODO: ???
--#include build/src/screens/screen_gameplay.lua
--#include build/src/screens/screen_title.lua

-->8
-- glyphs for copy-paste

--[[
q > […]
w > [∧]
e > [░]
r > [➡️]
t > [⧗]
y > [▤]
u > [⬆️]
i > [☉]
o > [🅾️]
p > [◆]
a > [█]
s > [★]
d > [⬇️]
f > [✽]
g > [●]
h > [♥]
j > [웃]
k > [⌂]
l > [⬅️]
z > [▥]
x > [❎]
c > [🐱]
v > [ˇ]
b > [▒]
n > [♪]
m > [😐]
--]]

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000060000000000000000850005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700055100000000000005285255000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000666c1000000000002252225000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000666c1000000000002252225000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700055100000000000005285255000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000060000000000000000850005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000c11d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000001ccd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000001ccd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000c11d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000003003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000b333b330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000bb333bb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000003003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000767610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000009976710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000009967610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000676710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
00002dd00000000000000000000dddd000000000000000dddddddddddd00000d000000000000dddddd7dd000000000000b0000b0000000000000000000000020
0000000000000000000000000000dddd0000000000000dddddd00dddd00c000000000020000000ddcddd00000000000000000000000000000000000000000000
0000000000000000000000000c00ddd000000000000b0dd0d00020d7002000c0000000000000000ddd0000000000000000000000d0000b00000000000020020d
0000000000000000000000000dddd000000000000000dd00000000dd0000000000000000000000000000000000000000000b002d7d00000200000000000000dd
0000000000ddd00000000020d2dd00000000b0000dddd0000000dddddd002000000002000000000000000c00000000020000000ddd00200000000000000020dd
00000dd00dddd00200000000ddd00020000000000dddd0000200d7d0ddd0000c00000000000000000c0000000000000000200000d0200000000000000200000d
0000dbdddddd0dd0000000000000c000000000000ddddd000000ddd2ddddd0002000dddd000000000000000dd00000200200000b200000b00000000000000020
00000ddddd2dddd0000000000000000000000000ddddddd0ddddddddd0c0000d00dddddd00000000000000ddd6d0000000000000000000000000000000000000
00ddddd00000ddddddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd0000000ddddddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd00000c0000dd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddd00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dd0000c000000000b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dd0c0000d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d0000000ddd000c000b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000dddddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d666666d0006666dd666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6dddddd5006dddd56dddd50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6d6dd6d506ddd6d56d6ddd5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6dddddd56dddddd56dddddd500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6dddddd56dddddd56dddddd500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6d6dd6d56d6dd6d56d6dd6d500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6dddddd56dddddd56dddddd500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d555555dd555555dd555555d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000d666666dd666666d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006dddddd56dddddd500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006d6dd6d56d6dd6d500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006dddddd56dddddd500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006dddddd56dddddd500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005ddd6d56d6ddd5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000005dddd56dddd50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000005555dd555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004800f800ffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff
