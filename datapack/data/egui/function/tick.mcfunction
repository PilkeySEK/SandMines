execute as @a[tag=!noClear] at @s if entity @e[type=marker,tag=egui.marker,distance=..6] run function egui:clickdetect
execute as @a at @s if items entity @s[tag=!noClear] player.cursor *[custom_data~{aspect:1b}] run function egui:jerry
execute as @a at @s if items entity @s[tag=!noClear] inventory.* *[custom_data~{aspect:1b}] run function egui:jerry
execute store result score $clear egui.data run clear @a[tag=!noClear] *[custom_data~{gclear:1b}]

execute as @a unless score @s egui.currentMenu matches -2147483648..2147483647 run scoreboard players set $clear egui.data 1
execute as @a unless score @s egui.currentMenu matches -2147483648..2147483647 run scoreboard players set @s egui.currentMenu 0
execute as @a if score $clear egui.data matches 1.. run function egui:render/render
execute as @a unless score @s egui.currentMenu.old = @s egui.currentMenu run function egui:render/render
execute as @a run scoreboard players operation @s egui.currentMenu.old = @s egui.currentMenu

execute as @a if score @s egui.enderchestDetection matches 1.. run function egui:on_echest_open

execute store result score $drop egui.data as @e[type=item] if data entity @s Item.components."minecraft:custom_data".gclear run kill @s
execute as @a if score $drop egui.data matches 1.. run function egui:render/render
scoreboard players set $drop egui.data 0