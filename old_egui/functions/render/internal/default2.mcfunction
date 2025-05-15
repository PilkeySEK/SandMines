scoreboard players add currentSlot tmp 1
scoreboard players add currentSlotp tmp 1

$loot replace entity @s enderchest.$(slot) loot {pools: [{rolls: 1, entries: [{type: 'minecraft:item', name: '$(id)', functions: [{function: 'minecraft:set_count', count: $(count)}, {function: 'minecraft:set_components', components: $(components)}]}]}]}

execute if score currentSlot tmp matches 27.. run return 0

data remove storage egui:tmp render.default
execute store result storage egui:tmp render.default.slot int 1 run scoreboard players get currentSlot tmp
execute store result storage egui:tmp render.default.slotp int 1 run scoreboard players get currentSlotp tmp
# $data modify storage egui:tmp render.default set from storage egui:tmp currentMenu.items[{Slot:$(slotp)b}]
# execute unless data storage egui:tmp render.default.components run data modify storage egui:tmp render.default.components set value {}
$data modify storage egui:tmp render.default.id set from storage egui:tmp currentMenu.items[{Slot:$(slotp)b}].id
$data modify storage egui:tmp render.default.count set from storage egui:tmp currentMenu.items[{Slot:$(slotp)b}].count
$execute if data storage egui:tmp currentMenu.items[{Slot:$(slotp)b}].components run data modify storage egui:tmp render.default.components set from storage egui:tmp currentMenu.items[{Slot:$(slotp)b}].components
$execute unless data storage egui:tmp currentMenu.items[{Slot:$(slotp)b}].components run data modify storage egui:tmp render.default.components set value {}

function egui:render/internal/default2 with storage egui:tmp render.default