$data modify storage egui:macros echest.id set value $(id)
data modify storage egui:macros echest.currentslot set value 0
data modify storage egui:macros echest.nextslot set value 1
scoreboard players set $currentslot egui.data 0
scoreboard players set $nextslot egui.data 1

$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:0b}] run data modify storage egui:macros echest.blockid set value "air"
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:0b}] run data modify storage egui:macros echest.count set value 1
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:0b}] run data modify storage egui:macros echest.components set value {}
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:0b}] run return run function egui:loops/replace_slot with storage egui:macros echest

$data modify storage egui:macros echest.blockid set from storage egui:menus data[{id:$(id)}].items[{Slot:0b}].id
$data modify storage egui:macros echest.count set from storage egui:menus data[{id:$(id)}].items[{Slot:0b}].count
$data modify storage egui:macros echest.components set from storage egui:menus data[{id:$(id)}].items[{Slot:0b}].components

function egui:loops/replace_slot with storage egui:macros echest