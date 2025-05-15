execute store result score $mining_spread_level tmp run data get entity @s SelectedItem.components."minecraft:custom_data".mining_spread_level 1
# execute store result storage sandmines:macros mining_spread.level int 1 run scoreboard players get $mining_spread_level tmp

execute if score $mining_spread_level tmp matches 1 run function code:mining/sand/mining_spread/level_1