execute store result score clear tmp run clear @s *[custom_data~{mainmenu:1b,gclear:1b}] 0
execute if score clear tmp matches 1.. run scoreboard players set @s egui.currentMenu 1

execute store result score clear tmp run clear @s *[custom_data~{creditsmenu:1b,gclear:1b}] 0
execute if score clear tmp matches 1.. run scoreboard players set @s egui.currentMenu 2

execute store result score clear tmp run clear @s *[custom_data~{storagemenu:1b,gclear:1b}] 0
execute if score clear tmp matches 1.. run scoreboard players set @s egui.currentMenu 3
