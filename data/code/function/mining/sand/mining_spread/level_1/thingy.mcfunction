execute if entity @s[tag=scoreboard] run scoreboard players operation @s currency.sand += @s mining.multiplier
execute if entity @s[tag=!scoreboard] run give @s yellow_dye[custom_name='{"color":"yellow","italic":false,"text":"Sand Fragment"}',custom_data={sand_frag:1b},hide_additional_tooltip={}] 1


execute align xyz run summon falling_block ~.5 ~ ~.5 {BlockState:{Name:"minecraft:suspicious_sand",Properties:{dusted:"3"}},NoGravity:1b,Silent:1b,Time:1,CancelDrop:1b,HurtEntities:0b}
execute align xyz positioned ~.5 ~ ~.5 run setblock ~ ~ ~ barrier
execute align xyz positioned ~.5 ~ ~.5 run playsound minecraft:block.mud_bricks.place block @a ~ ~ ~ 1 2
execute align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["sand_replace_marker","new","block_replace_marker"]}
execute align xyz positioned ~.5 ~ ~.5 run scoreboard players set @e[tag=sand_replace_marker,tag=new] block_replace 60
execute align xyz positioned ~.5 ~ ~.5 run tag @e[tag=sand_replace_marker,tag=new] remove new