execute unless block ~ ~ ~ minecraft:ender_chest run return run tellraw @s {"color": "red", "text": "You aren't standing on an enderchest!"}
summon marker ~ ~ ~ {Tags:["egui.marker"]}
tellraw @s {"color": "green", "text": "Summoned a marker!"}