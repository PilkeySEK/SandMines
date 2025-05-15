$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:$(slot)b}] run data modify storage egui:menus data[{id:$(id)}].items append value {Slot:$(slot)b, id:"minecraft:light_gray_stained_glass_pane", count:1, components:{"minecraft:custom_data":{gclear:1b}, "minecraft:hide_tooltip":{}}}
execute if score $slot egui.data matches 27.. run return 0
scoreboard players add $slot egui.data 1
execute store result storage egui:macros panes.slot int 1 run scoreboard players get $slot egui.data
function egui:loops/addpanes with storage egui:macros panes