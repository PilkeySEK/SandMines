scoreboard players set @s egui.enderchestDetection 0
tag @s remove echest.storing
# dont re-render if player is already in the main menu
execute if score @s egui.currentMenu matches 0 run return run scoreboard players set @s egui.enderchestDetection 0

execute if score @s egui.currentMenu matches 2 run data modify storage egui:macros uuid set from entity @s UUID
execute if score @s egui.currentMenu matches 2 run function egui:on_echest_open/store_echest with storage egui:macros
execute if score @s egui.currentMenu matches 2 run function egui:utils/clearechest
scoreboard players set @s[tag=!egui.noEchestReset] egui.currentMenu 0
execute if entity @s[tag=!egui.noEchestReset] run function egui:render/render