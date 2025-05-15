execute unless block ~ ~-1 ~ barrel run return run tellraw @s {"text": "You aren't standing on a barrel!", "color": "red"}
$data remove storage sandmines:shops data[{id:$(id)}]
$data modify storage sandmines:shops data append value {id:$(id), items:[]}
$data modify storage sandmines:shops data[{id:$(id)}].items set from block ~ ~-1 ~ Items
$function code:shops/utils/addpanes {id:$(id)}
$data remove storage sandmines:shops data[{id:$(id)}].items[].components."minecraft:custom_data".slot
$data modify storage sandmines:shops data[{id:$(id)}].items[].components."minecraft:custom_data".shopid set value $(id)
$data modify storage sandmines:shops data[{id:$(id)}].items[].components."minecraft:custom_data".clear set value 1b
$function code:shops/utils/addnums {id:$(id)}
tellraw @s {"text": "Added shop!", "color": "green"}