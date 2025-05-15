data modify storage egui:macros playeruuid set from entity @s UUID
data modify storage egui:macros slot set value 0
data modify storage egui:macros nextslot set value 1
scoreboard players set $slot egui.data 0
scoreboard players set $nextslot egui.data 1
function egui:menus/menu_2/iterate_start with storage egui:macros