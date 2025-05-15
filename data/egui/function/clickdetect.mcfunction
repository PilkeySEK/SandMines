execute store result score $clear egui.data run clear @s *[custom_data~{mainmenu:1b}] 0
execute if score $clear egui.data matches 1.. run function egui:render/switchmenu {id:0}
execute if score $clear egui.data matches 1.. run scoreboard players set @s egui.currentMenu 0
execute if score $clear egui.data matches 1.. run function egui:utils/replace_slot_start {id:1}

execute store result score $clear egui.data run clear @s *[custom_data~{creditsmenu:1b}] 0
execute if score $clear egui.data matches 1.. run function egui:render/switchmenu {id:1}
execute if score $clear egui.data matches 1.. run scoreboard players set @s egui.currentMenu 1
execute if score $clear egui.data matches 1.. run function egui:utils/replace_slot_start {id:0}

execute store result score $clear egui.data run clear @s *[custom_data~{storagemenu:1b}] 0
execute if score $clear egui.data matches 1.. run function egui:render/switchmenu {id:2}
execute if score $clear egui.data matches 1.. run scoreboard players set @s egui.currentMenu 2

execute store result score $clear egui.data run clear @s *[custom_data~{aspect:1b}] 0
execute if score $clear egui.data matches 1.. run function egui:jerry

#execute if score $clear egui.data matches 1.. run function egui:render/switchmenu {id:2}
#execute if score $clear egui.data matches 1.. run scoreboard players set @s egui.currentMenu 2
#execute if score $clear egui.data matches 1.. run function egui:utils/replace_slot_start {id:2}