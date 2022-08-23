pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- todo shmup game title
-- by beetroot paul

#include build/src/common/buttons.lua
#include build/src/common/colors.lua

#include build/src/main_cart/main_cart.lua
#include build/src/main_cart/screen_level_select.lua
#include build/src/main_cart/screen_title.lua

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
aaaaaaaa000000000000000000000000a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaaaaaaa00000000000000000000aaaaa000000000000dddaaaaaaaad00c000000000020000000ddcddd00000000000000000000000000000000000000000000
aaaaaaaa00000000000000000a00aaa0a0000000000b0dd0aaaaaaaa002000c0000000000000000ddd7000000000000000000000d0000b00000000000020020d
aaaaaaaa00aaa000000000000aaaa000a00000000000dd00aaaaa0a70000000000000000000000000000000000000000000b002d7d00000200000000000000dd
aaaaaaaa0aaaa00200000020aaaa0000a000b0000dddd000a2aaa7a0dd002000000002000000000000000c00ddd000020000000ddd00200000000000000020dd
aaaaaaaaaaaa0aa000000000aaa00020a00000000dddd000aaaaaaaaddd0000c000000dd000000000c00000dd7dd000000200000d0200000000000000200000d
aaaaaaaaaaaaaaa0000000000000c000a0000000dddddd00aaaaaaaaddddd0002000dddd00000000000000dddddd00200200000b200000b00000000000000020
aaaaaaaa000000000000000000000000a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd0000000ddddddda000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd00000c0000ddaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddd0000000000000aaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dd0000c000000000baaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dd0c0000d0000000aaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d0000000ddd000c0aaba000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000aaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
daaaaaad000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aa6aaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d555555d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
__sfx__
000100001a1501c1501e15020150191501315012150121501515019150201502c1503415000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00050000000002b5502f550305500e55010550125501655018550195501b5501b550195500f5500e5500e5500e5500e5500d5500b5500d55010550155501c550235502a550305503655000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0010000000000293502935029350273502435022350000000000000000133501635016350000001b350000001f3502235022350273502b3503335035350353502735022350000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000001f7501d7501b7501b75018750167500a75016750167503a7503a7503a7503a750167501f7500000000000000000f75018750377503c7503c750377503375033750000000000000000000000000000000
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

