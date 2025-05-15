## Radwan easter egg included

# Change_state
execute store result score .random block_replace run random value 0..2

## State 1

#execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s run setblock ~ ~ ~ suspicious_sand[dusted=2]
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s run kill @e[type=falling_block, distance=..0.1]
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"minecraft:suspicious_sand",Properties:{dusted:"2"}},NoGravity:1b,Silent:1b,Time:1,CancelDrop:1b,HurtEntities:0b}
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s if score .random block_replace matches 0 run playsound minecraft:block.packed_mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s if score .random block_replace matches 1 run playsound minecraft:block.mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.75
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s if score .random block_replace matches 2 run playsound minecraft:block.mud_bricks.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s run playsound minecraft:entity.ender_dragon.death master @a[tag=easteregg.dragon_block_break] ~ ~ ~ 1 1

## State 2
#execute as @s[tag=sand_replace_marker,scores={block_replace=30}] at @s run setblock ~ ~ ~ suspicious_sand[dusted=1]
execute as @s[tag=sand_replace_marker,scores={block_replace=30}] at @s run kill @e[type=falling_block, distance=..0.1]
execute as @s[tag=sand_replace_marker,scores={block_replace=30}] at @s align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"minecraft:suspicious_sand",Properties:{dusted:"1"}},NoGravity:1b,Silent:1b,Time:1,CancelDrop:1b,HurtEntities:0b}
execute as @s[tag=sand_replace_marker,scores={block_replace=30}] at @s if score .random block_replace matches 0 run playsound minecraft:block.packed_mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.25
execute as @s[tag=sand_replace_marker,scores={block_replace=30}] at @s if score .random block_replace matches 1 run playsound minecraft:block.mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.25
execute as @s[tag=sand_replace_marker,scores={block_replace=30}] at @s if score .random block_replace matches 2 run playsound minecraft:block.mud_bricks.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.25
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s run playsound minecraft:entity.ender_dragon.death master @a[tag=easteregg.dragon_block_break] ~ ~ ~ 1 1

## State 3
#execute as @s[tag=sand_replace_marker,scores={block_replace=15}] at @s run setblock ~ ~ ~ suspicious_sand[dusted=0]
execute as @s[tag=sand_replace_marker,scores={block_replace=15}] at @s run kill @e[type=falling_block, distance=..0.1]
execute as @s[tag=sand_replace_marker,scores={block_replace=15}] at @s align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"minecraft:suspicious_sand",Properties:{dusted:"1"}},NoGravity:1b,Silent:1b,Time:1,CancelDrop:1b,HurtEntities:0b}
execute as @s[tag=sand_replace_marker,scores={block_replace=15}] at @s if score .random block_replace matches 0 run playsound minecraft:block.packed_mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.5
execute as @s[tag=sand_replace_marker,scores={block_replace=15}] at @s if score .random block_replace matches 1 run playsound minecraft:block.mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.5
execute as @s[tag=sand_replace_marker,scores={block_replace=15}] at @s if score .random block_replace matches 2 run playsound minecraft:block.mud_bricks.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.5
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s run playsound minecraft:entity.ender_dragon.death master @a[tag=easteregg.dragon_block_break] ~ ~ ~ 1 1

## State 4
execute as @s[tag=sand_replace_marker,scores={block_replace=0}] at @s if score .random block_replace matches 0 run playsound minecraft:block.packed_mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.75
execute as @s[tag=sand_replace_marker,scores={block_replace=0}] at @s if score .random block_replace matches 1 run playsound minecraft:block.mud.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.75
execute as @s[tag=sand_replace_marker,scores={block_replace=0}] at @s if score .random block_replace matches 2 run playsound minecraft:block.mud_bricks.place block @a[tag=!easteregg.dragon_block_break] ~ ~ ~ 1 1.75
execute as @s[tag=sand_replace_marker,scores={block_replace=45}] at @s run playsound minecraft:entity.ender_dragon.death master @a[tag=easteregg.dragon_block_break] ~ ~ ~ 1 1

## Particle
particle minecraft:block{block_state:"minecraft:sand"} ~ ~.7 ~ 0.25 0.25 0.25 0 15 force @a[distance=..25]
particle minecraft:block{block_state:"minecraft:sand"} ~ ~.7 ~ 0.25 0.25 0.25 0 35 normal @a[distance=..25]

## Extras
scoreboard players reset .random block_replace