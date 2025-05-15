scoreboard players set currentSlot tmp 1
data modify storage egui:tmp setglasspanes.slot set value 1
execute unless data storage egui:tmp currentMenu.items[{Slot:0b}] run data modify storage egui:tmp currentMenu.items append value {Slot:0b, id:"minecraft:light_gray_stained_glass_pane", count:1, components:{"minecraft:custom_data":{clear:1b}, "minecraft:hide_tooltip":{}}}
function egui:render/util/internal/setglasspanes2 with storage egui:tmp setglasspanes