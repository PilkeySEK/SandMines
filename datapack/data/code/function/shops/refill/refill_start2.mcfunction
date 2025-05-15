$execute as @e[type=acacia_chest_boat,tag=shop_marker,tag=shop$(id),limit=1, tag=!shop.checked] run function code:shops/refill/refill with storage sandmines:macros shop
$execute unless score $amount_shops shop.data matches -2147483648..2147483647 store result score $amount_shops shop.data if entity @e[type=acacia_chest_boat,tag=shop$(id)]
execute if score $amount_shops shop.data matches 1.. run scoreboard players remove $amount_shops shop.data 1
execute if score $amount_shops shop.data matches 1.. run return run function code:shops/refill/refill_start2 with storage sandmines:macros shop
scoreboard players reset $amount_shops shop.data
execute store result storage sandmines:macros shop.id int 1 run scoreboard players get $id shop.data
scoreboard players add $id shop.data 1
execute store result storage sandmines:macros shop.nextid int 1 run scoreboard players get $id shop.data
$execute if data storage sandmines:shops data[{id:$(nextid)}] run function code:shops/refill/refill_start2 with storage sandmines:macros shop