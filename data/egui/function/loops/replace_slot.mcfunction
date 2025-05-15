$loot replace entity @s enderchest.$(currentslot) loot \
                                                        {pools: [{rolls: 1, entries: [{type: 'minecraft:item',\
                                                        name: '$(blockid)', functions:\
                                                        [{function: 'minecraft:set_count', count: $(count)},\
                                                        {function: 'minecraft:set_components', components: $(components)}]}]}]}
execute if score $currentslot egui.data matches 27.. run return 0
scoreboard players add $currentslot egui.data 1
scoreboard players add $nextslot egui.data 1
execute store result storage egui:macros echest.currentslot int 1 run scoreboard players get $currentslot egui.data
execute store result storage egui:macros echest.nextslot int 1 run scoreboard players get $nextslot egui.data

# if the next slot is air:
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros echest.blockid set value "minecraft:bedrock"
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros echest.count set value 1
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}] run data modify storage egui:macros echest.components set value {}
$execute unless data storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}] run return run function egui:loops/replace_slot with storage egui:macros echest
# else:
$data modify storage egui:macros echest.blockid set from storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}].id
$data modify storage egui:macros echest.count set from storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}].count
$data modify storage egui:macros echest.components set from storage egui:menus data[{id:$(id)}].items[{Slot:$(nextslot)b}].components
function egui:loops/replace_slot with storage egui:macros echest