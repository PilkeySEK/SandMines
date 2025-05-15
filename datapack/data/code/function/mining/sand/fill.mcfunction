setblock ~ ~ ~ sand
execute if block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ moving_piston
kill @e[type=falling_block, distance=..0.1]
kill @s