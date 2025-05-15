execute unless block ~ ~-1 ~ minecraft:barrel run return run tellraw @s {"color": "red", "text": "You aren't standing on a barrel!"}

$scoreboard players set $doPanes egui.data $(panes)
    
$data remove storage egui:menus data[{id:$(id)}]
$data modify storage egui:menus data append value {id:$(id), items:[]}
$data modify storage egui:menus data[{id:$(id)}].items set from block ~ ~-1 ~ Items

$execute unless score $doPanes egui.data matches 0 run function egui:utils/addpanes_start {id:$(id)}
$data remove storage egui:menus data[{id:$(id)}].storage
$execute if score $doPanes egui.data matches 0 run data modify storage egui:menus data[{id:$(id)}].storage set value true
$function egui:utils/addgclear {id:$(id)}


tellraw @s {"color": "green", "text": "The menu has been added"}