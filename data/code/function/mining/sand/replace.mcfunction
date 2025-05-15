execute at @s align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"minecraft:suspicious_sand",Properties:{dusted:"3"}},NoGravity:1b,Silent:1b,Time:1,CancelDrop:1b,HurtEntities:0b}
#execute at @s align xyz run summon falling_block ~.5 ~ ~.5 {Tags:["sand_replace_marker","new","block_replace_marker"],BlockState:{Name:"minecraft:suspicious_sand",Properties:{dusted:"3"}},NoGravity:1b,Silent:1b,Time:1,CancelDrop:1b,HurtEntities:0b}
setblock ~ ~ ~ barrier

playsound minecraft:block.mud_bricks.place block @a ~ ~ ~ 1 2
summon marker ~ ~ ~ {Tags:["sand_replace_marker","new","block_replace_marker"]}
scoreboard players set @e[tag=sand_replace_marker,tag=new] block_replace 60

tag @e[tag=sand_replace_marker,tag=new] remove new

tag @s add tmp.detection
# it isnt perfect but good enough :sob:
execute at @s as @a[scores={detection.mined_sand=1..}, limit=1, sort=nearest] run function code:mining/sand/as_player_at_item

kill @s