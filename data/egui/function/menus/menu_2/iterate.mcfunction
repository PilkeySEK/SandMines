$loot replace entity @s enderchest.$(slot) loot \
                                                {pools: [{rolls: 1, entries: [{type: 'minecraft:item',\
                                                name: '$(itemid)', functions:\
                                                [{function: 'minecraft:set_count', count: $(itemcount)},\
                                                {function: 'minecraft:set_components', components: $(itemcomponents)}]}]}]}
execute if score $slot egui.data matches 27.. run return 0
scoreboard players add $slot egui.data 1
scoreboard players add $nextslot egui.data 1
execute store result storage egui:macros slot int 1 run scoreboard players get $slot egui.data
execute store result storage egui:macros nextslot int 1 run scoreboard players get $nextslot egui.data

$execute if data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros itemid set from storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}].id
$execute if data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros itemcount set from storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}].count
$execute if data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros itemcomponents set from storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}].components
$execute unless data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros itemid set value "minecraft:air"
$execute unless data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros itemcount set value 1b
$execute unless data storage egui:storage data[{UUID:$(playeruuid)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros itemcomponents set value {}

function egui:menus/menu_2/iterate with storage egui:macros