function code:player/triggers/sell_treasure/calculate_value
execute if score base_value tmp matches 0 run return 0
item replace entity @s weapon.mainhand with air
execute if entity @s[tag=scoreboard] run scoreboard players operation @s currency.sand += base_value tmp
execute if entity @s[tag=!scoreboard] store result storage sandmines:macros amount int 1 run scoreboard players get base_value tmp
execute if entity @s[tag=!scoreboard] run function code:player/triggers/sell_treasure/give_frags_macro with storage sandmines:macros

tellraw @s [{"text": "+","color": "green"},{"score":{"name": "base_value","objective": "tmp"},"color": "green"}]