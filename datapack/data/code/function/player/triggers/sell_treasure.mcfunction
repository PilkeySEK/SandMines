execute if score @s sell_treasure matches 1 run function code:player/triggers/sell_treasure/calculate_value
execute if score @s sell_treasure matches 1 if score base_value tmp matches 0 run tellraw @s {"text": "You are not holding a treasure in your hand currently.","color": "red"}
execute if score @s sell_treasure matches 1 if score base_value tmp matches 0 run return run scoreboard players set @s sell_treasure 0
execute if score @s sell_treasure matches 1 run tellraw @s [{"text": "You are holding a value of ","color": "aqua"},{"score": {"name": "base_value","objective": "tmp"},"color": "dark_aqua"},{"text": " in your hand."}]
execute if score @s sell_treasure matches 1 run tellraw @s {"text": "[Sell now]","color": "blue","clickEvent": {"action": "run_command","value": "/trigger sell_treasure set 2"},"hoverEvent": {"action": "show_text","contents": "Click to sell"}}

execute if score @s sell_treasure matches 2 run function code:player/triggers/sell_treasure/sell

scoreboard players set @s sell_treasure 0