# easter egg lol
# by pilkey :skull_rotate:

execute if score $skull_rotate_ee tmp matches 0..2 run setblock -54 126 26 minecraft:skeleton_skull[rotation=0] replace
execute if score $skull_rotate_ee tmp matches 3..5 run setblock -54 126 26 minecraft:skeleton_skull[rotation=1] replace
execute if score $skull_rotate_ee tmp matches 6..8 run setblock -54 126 26 minecraft:skeleton_skull[rotation=2] replace
execute if score $skull_rotate_ee tmp matches 9..11 run setblock -54 126 26 minecraft:skeleton_skull[rotation=3] replace
execute if score $skull_rotate_ee tmp matches 12..14 run setblock -54 126 26 minecraft:skeleton_skull[rotation=4] replace
execute if score $skull_rotate_ee tmp matches 15..17 run setblock -54 126 26 minecraft:skeleton_skull[rotation=5] replace
execute if score $skull_rotate_ee tmp matches 18..20 run setblock -54 126 26 minecraft:skeleton_skull[rotation=6] replace
execute if score $skull_rotate_ee tmp matches 21..23 run setblock -54 126 26 minecraft:skeleton_skull[rotation=7] replace
execute if score $skull_rotate_ee tmp matches 24..26 run setblock -54 126 26 minecraft:skeleton_skull[rotation=8] replace
execute if score $skull_rotate_ee tmp matches 27..29 run setblock -54 126 26 minecraft:skeleton_skull[rotation=9] replace
execute if score $skull_rotate_ee tmp matches 30..32 run setblock -54 126 26 minecraft:skeleton_skull[rotation=10] replace
execute if score $skull_rotate_ee tmp matches 33..35 run setblock -54 126 26 minecraft:skeleton_skull[rotation=11] replace
execute if score $skull_rotate_ee tmp matches 36..38 run setblock -54 126 26 minecraft:skeleton_skull[rotation=12] replace
execute if score $skull_rotate_ee tmp matches 39..41 run setblock -54 126 26 minecraft:skeleton_skull[rotation=13] replace
execute if score $skull_rotate_ee tmp matches 42..44 run setblock -54 126 26 minecraft:skeleton_skull[rotation=14] replace
execute if score $skull_rotate_ee tmp matches 45..47 run setblock -54 126 26 minecraft:skeleton_skull[rotation=15] replace

scoreboard players add $skull_rotate_ee tmp 1
execute if score $skull_rotate_ee tmp matches 48.. run scoreboard players set $skull_rotate_ee tmp 0