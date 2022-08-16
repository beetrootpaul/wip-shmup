pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- todo game title
-- by beetroot paul

#include libs/pecs/pecs.lua

#include build/src/main.lua

-->8
-- misc

#include build/src/colors.lua

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
00000000cccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000cc0c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000ccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000cc0000c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000c00000c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000c0000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
