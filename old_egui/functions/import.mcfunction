## ARGS
# id -> the menu id, this WILL overwrite any already existing menus with that id

execute unless block ~ ~-1 ~ barrel run return run tellraw @s {"text": "Please stand on top of a barrel!", "color": "red"}

$scoreboard players set #id egui.currentMenu $(id)

$data remove storage egui:menus data[{id:$(id)}]
$data modify storage egui:menus data append value {id:$(id), items:[]}
$data modify storage egui:menus data[{id:$(id)}].items set from block ~ ~-1 ~ Items
$execute unless score #id egui.currentMenu matches 3.. run data modify storage egui:menus data[{id:$(id)}].items[].components."minecraft:custom_data".gclear set value 1b
$execute if score #id egui.currentMenu matches 3.. run function egui:render/util/storage/setgclear {id:$(id)}

tellraw @s {"text": "Successfully imported menu.", "color": "green"}