scoreboard players set $id shop.data 1
data modify storage sandmines:macros shop.id set value 0
data modify storage sandmines:macros shop.nextid set value 1
execute as @e[type=chest_boat,tag=shop_marker] run tag @s remove shop.checked
function code:shops/refill/refill_start2 with storage sandmines:macros shop