$execute unless data entity @s EnderItems[{Slot:$(slot)b}] run data modify storage egui:macros refund.blockid set value air
$execute unless data entity @s EnderItems[{Slot:$(slot)b}] run data modify storage egui:macros refund.count set value 1
$execute unless data entity @s EnderItems[{Slot:$(slot)b}] run return run data modify storage egui:macros refund.components set value {}
$data modify storage egui:macros refund.blockid set from entity @s EnderItems[{Slot:$(slot)b}].id
$data modify storage egui:macros refund.count set from entity @s EnderItems[{Slot:$(slot)b}].count
$execute if data entity @s EnderItems[{Slot:$(slot)b}].components run return run data modify storage egui:macros refund.components set from entity @s EnderItems[{Slot:$(slot)b}].components
data modify storage egui:macros refund.components set value {}