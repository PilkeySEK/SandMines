return run tellraw @s {"text": "Disabled.", "color": "red"}

execute unless score @s reach_dist.cost matches 0.. run scoreboard players set @s reach_dist.cost 2000
execute store result storage sandmines:macros price int 1 run scoreboard players get @s reach_dist.cost
function code:shops/buy/buyutil/frags_or_bank with storage sandmines:macros

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

scoreboard players operation @s reach_dist.cost *= $3 reach_dist.cost
scoreboard players operation @s reach_dist.cost /= $2 reach_dist.cost

data merge storage sandmines:macros {type:"minecraft:player.block_interaction_range"}
execute unless score @s reach_dist matches 0.. run scoreboard players set @s reach_dist 6
scoreboard players add @s reach_dist 1
execute store result storage sandmines:macros value int 1 run scoreboard players get @s reach_dist
function code:shops/buy/upgrades/set_attribute_macro with storage sandmines:macros