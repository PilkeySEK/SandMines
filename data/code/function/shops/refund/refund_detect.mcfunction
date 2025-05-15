execute store result storage sandmines:macros refund.id int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{clear:1b}}}].components."minecraft:custom_data".shopid
execute store result storage sandmines:macros refund.slot int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{clear:1b}}}].components."minecraft:custom_data".slot
execute if items entity @s player.cursor *[minecraft:custom_data~{clear:1b}] run function code:shops/refund/cursor_detection
function code:shops/refund/refund_get with storage sandmines:macros refund
scoreboard players reset @s shop.data