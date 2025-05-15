return 0
data modify storage sandmines:macros upgrades.block_break_speed.get set from entity @s Attributes[{Name: "minecraft:player.block_break_speed"}].Base
execute store result score $mspeed.price upgrades store result score $mspeed.get upgrades run data get storage sandmines:macros upgrades.block_break_speed.get 10

execute if score $mspeed.get upgrades matches 100.. run return run tellraw @s {"text": "You have already maxed out this upgrade", "color": "red"}

scoreboard players remove $mspeed.price upgrades 10
scoreboard players operation $mspeed.price upgrades *= 500 constant
scoreboard players add $mspeed.price upgrades 2000

execute store result storage sandmines:macros upgrades.block_break_speed.price int 1 run scoreboard players get $mspeed.price upgrades
execute store result score $success tmp if score $mspeed.price upgrades <= @s currency.sand
execute if score $mspeed.price upgrades matches 0..4500 run function code:shops/buy/buyutil/frags_or_bank with storage sandmines:macros upgrades.block_break_speed
execute if score $success tmp matches 0 run return run tellraw @s [{"text":"You do not have enough sand for that, you need ", "color": "red"}, {"score": {"name": "$mspeed.price", "objective":"upgrades"}, "color": "red"}, {"text":" sand for that!", "color":"red"}]
execute unless score $mspeed.price upgrades matches 0..4500 run scoreboard players operation @s currency.sand -= $mspeed.price upgrades
data modify storage sandmines:macros upgrades.type set value "minecraft:player.block_break_speed"
scoreboard players add $mspeed.get upgrades 1
execute store result storage sandmines:macros upgrades.value float 0.1 run scoreboard players get $mspeed.get upgrades
data modify storage sandmines:macros upgrades.text set value "Your mining speed was succesfully upgraded!"
function code:shops/buy/upgrades/set_attribute_macro with storage sandmines:macros upgrades