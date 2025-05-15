data remove storage egui:tmp render.default

scoreboard players set currentSlot tmp 0
scoreboard players set currentSlotp tmp 1
data modify storage egui:tmp render.default.slot set value 0
data modify storage egui:tmp render.default.slotp set value 1

data modify storage egui:tmp render.default.id set from storage egui:tmp currentMenu.items[{Slot:0b}].id
data modify storage egui:tmp render.default.count set from storage egui:tmp currentMenu.items[{Slot:0b}].count
execute if data storage egui:tmp currentMenu.items[{Slot:0b}].components run data modify storage egui:tmp render.default.components set from storage egui:tmp currentMenu.items[{Slot:0b}].components
execute unless data storage egui:tmp currentMenu.items[{Slot:0b}].components run data modify storage egui:tmp render.default.components set value {}

function egui:render/internal/default2 with storage egui:tmp render.default