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
__level_number = 1
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
00000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00002dd000000000000000000000dddd8000000000000dddddddddddd00c000000000020000000ddcddd00000000000000000000000000000000000000000000
0000000000000000000000000c00ddd080000000000b0dd0ddd00ddd002000c0000000000000000ddd7000000000000000000000d0000b00000000000020020d
0000000000ddd000000000000dddd000800000000000dd00d00020d70000000000000000000000000000000000000000000b002d7d00000200000000000000dd
00000dd00dddd00200000020d2dd00008000b0000dddd000020007d0dd002000000002000000000000000c00ddd000020000000ddd00200000000000000020dd
0000dbdddddd0dd000000000ddd00020800000000dddd0000000ddd2ddd0000c000000dd000000000c00000dd7dd000000200000d0200000000000000200000d
00000ddddd2dddd0000000000000c00080000000dddddd00ddddddddddddd0002000dddd00000000000000dddddd00200200000b200000b00000000000000020
00000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd0000000ddddddd8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd00000c0000dd008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddd00000000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dd0000c000000000b008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dd0c0000d00000000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d0000000ddd000c000b8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
__label__
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
d666666dd666666dd666666d11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111611
6dddddd56dddddd56dddddd511111111111111111111111111111111111111111111111111111111111611111111111111611111111111111611111111111111
6d6dd6d56d6dd6d56d6dd6d511161111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6dddddd56dddddd56dddddd511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6dddddd56dddddd56dddddd561111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6d6dd6d56d6dd6d56d6dd6d511111111111111111111111111111111111111111111161111111111111111111111111111111111111111111111111111111111
6dddddd56dddddd56dddddd511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
d555555dd555555dd555555d11111111111111111111111111611111111111111111111111111111111111111111111111111111111111111111111111111111
d666666dd666666dd666666d11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111161111111
6dddddd56dddddd56dddddd511111111111111111111111111161111111111111111111111111111111111111111111111111111111111111111111111111111
6d6dd6d56d6dd6d56d6dd6d511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6dddddd56dddddd56dddddd511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6dddddd56dddddd56dddddd511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6d6dd6d56d6dd6d56d6dd6d511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
6dddddd56dddddd56dddddd511111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
d555555dd555555dd555555d11111111111111111111111111111111111111111161111111111111111111111111111111111111111111111111111111111111
11111111611111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111611111111111111111111111111116111
11111161111111111111111111111111111111116111111111111111111111111111111111111111111111111611611111111111111111111111111111111111
11111111111111111111111111111116111111111111111111111111111111111161111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111611111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111611111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111161111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111611111111111111111111111111111111111111111111111
11111111111111111111161111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111161611111111111161111111111111111111111111111116111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111116111111111111111111111111111116
111111111111111111111111111111111111111111111111111111116111111111111111d666666dd666666dd666666dd666666dd666666dd666666d11161111
1111111111611111111111111111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
1111111111111111111111111111111111111111111111111111111111111116111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
1111111111111111111111611111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
1111111111111111111111111111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
1111111111111111111111111111111111111111111111111111111111111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
1116111111111111111111111111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
111111111111111111111111111111111111111111111111111111111111111111111111d555555dd555555dd555555dd555555dd555555dd555555d11111111
111111111111111111111111111111111111111111111111111111111111111111111111d666666dd666666dd666666dd666666dd666666dd666666d11111111
1111111111111111111111111111116111111111111111111111111111111116111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
1111111111111116111111111111111111111111111111111111111111111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
1111111111111111111111111111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
1111111111111111111111111111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
1111111111111111111116111111111111111111111111111111111111111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
1111111111111111111115511111111111111111111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
111111111111111111111666c11111111111111111111111111111111111111111111111d555555dd555555dd555555dd555555dd555555dd555555d11111111
d666666dd666666dd6666666c1111111111111111111111111111111d666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666d11111111
6dddddd56dddddd56dddd551111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
6d6dd6d56d6dd6d56d6dd6d5111111111111111111111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
6d6dd6d56d6dd6d56d6dd6d5111111111111111111111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
d555555dd555555dd555555d11111111111111111111111111111111d555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555d11111111
d666666dd666666dd666666d11111111111111111111111111111111d666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666d11111611
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
6d6dd6d56d6dd6d56d6dd6d5111111111111111111111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
6d6dd6d56d6dd6d56d6dd6d5111111111111111111111111111111166d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111
6dddddd56dddddd56dddddd5111111111111111111111111111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111
d555555dd555555dd555555d11111111111111111111111111111111d555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555d11111111
11111111d666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666d1111111111111111d666666d
116111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111161111116dddddd5
111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111111111116d6dd6d5
111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd5
133161116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd5
311311116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111111111116d6dd6d5
111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd5
b3311111d555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555d1111111111111111d555555d
3bb11111d666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666d1111111111111111d666666d
111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd5
311311116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111111111116d6dd6d5
133111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111611111111116dddddd5
111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd5
111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111111111116d6dd6d5
111111116dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd5
11111111d555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555d1111111111111111d555555d
d666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666d1111111111111111d666666dd666666dd666666dd666666dd666666d
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd56dddddd56dddddd56dddddd56dddddd5
6d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d5
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd56dddddd56dddddd56dddddd56dddddd5
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd56dddddd56dddddd56dddddd56dddddd5
6d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111185611511116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d5
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111528525511116dddddd56dddddd56dddddd56dddddd56dddddd5
d555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555d1111122522251111d555555dd555555dd555555dd555555dd555555d
d666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666dd666666d1111122522251111d666666dd666666dd666666dd666666dd666666d
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111528525511116dddddd56dddddd56dddddd56dddddd56dddddd5
6d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111185111511116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d5
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd56dddddd56dddddd56dddddd56dddddd5
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd56dddddd56dddddd56dddddd56dddddd5
6d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d511111111111111116d6dd6d56d6dd6d56d6dd6d56d6dd6d56d6dd6d5
6dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd56dddddd511111111111111116dddddd56dddddd56dddddd56dddddd56dddddd5
d555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555dd555555d5555555555555555d555555dd555555dd555555dd555555dd555555d
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555

__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004800f800ffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff
