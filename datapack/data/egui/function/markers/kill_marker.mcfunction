execute unless entity @e[type=marker, tag=egui.marker,distance=..6] run return run tellraw @s {"color": "red", "text": "Couldn't find a nearby marker"}
execute at @s positioned ~ ~-1 ~ run kill @e[type=marker, tag=egui.marker, distance=..6, limit=1, sort=nearest]
tellraw @s {"color": "green", "text": "Killed the nearest marker!"}