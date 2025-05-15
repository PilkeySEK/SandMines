$execute if data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}] run data modify storage egui:macros itemid set from storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}].id
$execute if data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}] run data modify storage egui:macros itemcount set from storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}].count
$execute if data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}] run data modify storage egui:macros itemcomponents set from storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}].components
$execute unless data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}] run data modify storage egui:macros itemid set value "minecraft:air"
$execute unless data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}] run data modify storage egui:macros itemcount set value 1b
$execute unless data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(slot)b}] run data modify storage egui:macros itemcomponents set value {}

function egui:menus/menu_2/iterate with storage egui:macros