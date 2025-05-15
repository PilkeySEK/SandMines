scoreboard players set $slot egui.data 1
data modify storage egui:macros panes.slot set value 1
$data modify storage egui:macros panes.id set value $(id)
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:0b}] run data modify storage egui:menus data[{id:$(id)}].items append value {Slot:0b, id:"minecraft:light_gray_stained_glass_pane", count:1, components:{"minecraft:custom_data":{gclear:1b}, "minecraft:hide_tooltip":{}}}
function egui:loops/addpanes with storage egui:macros panes