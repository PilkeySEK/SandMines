# execute as @a unless score @s egui.currentMenu = @s egui.currentMenu run scoreboard players set @s egui.currentMenu 1

execute as @a[tag=!egui.noGUI] at @s if entity @e[tag=egui.guiMarker, distance=..6] run function egui:render

execute as @a[tag=!egui.noGUI] at @s if entity @e[tag=egui.guiMarker, distance=..6] run function egui:clickdetect

clear @a[tag=!egui.noGUI, tag=!noClear] *[custom_data~{gclear:1b}]
