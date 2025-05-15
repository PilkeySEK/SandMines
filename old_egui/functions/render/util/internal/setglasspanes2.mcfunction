scoreboard players add currentSlot tmp 1

$execute unless data storage egui:tmp currentMenu.items[{Slot:$(slot)b}] run data modify storage egui:tmp currentMenu.items append value {Slot:$(slot)b, id:"minecraft:light_gray_stained_glass_pane", count:1, components:{"minecraft:custom_data":{clear:1b}, "minecraft:hide_tooltip":{}}}

execute if score currentSlot tmp matches 27.. run return 0

execute store result storage egui:tmp setglasspanes.slot int 1 run scoreboard players get currentSlot tmp

function egui:render/util/internal/setglasspanes2 with storage egui:tmp setglasspanes
