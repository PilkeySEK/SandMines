scoreboard players set @s stats 0

execute store result score $frags_in_inv tmp run clear @s *[custom_data~{sand_frag:1b}] 0
execute store result score $ingots_in_inv tmp run clear @s *[custom_data~{sand_ingot:1b}] 0
scoreboard players operation $total_frags_and_ingots_in_inv tmp = $frags_in_inv tmp
scoreboard players operation $total_frags_and_ingots_in_inv tmp += $ingots_in_inv tmp
scoreboard players operation $total_sand_value_in_inv tmp = $ingots_in_inv tmp
scoreboard players operation $total_sand_value_in_inv tmp *= 64 constant
scoreboard players operation $total_sand_value_in_inv tmp += $frags_in_inv tmp
scoreboard players operation $total_sand_value tmp = $total_sand_value_in_inv tmp
scoreboard players operation $total_sand_value tmp += @s currency.sand

function code:misc/calculate_playtime

tellraw @s [{"text":"-----| ", "color": "gray"}, {"text": "ꜱᴛᴀᴛꜱ", "color": "gold"}, {"text": " |-----", "color": "gray"}]

tellraw @s [{"text": "Total Sand Mined: ", "color": "yellow"}, {"score":{"name": "@s","objective": "stats.mined_sand"},"color":"dark_aqua"}]
tellraw @s [{"text": "Sand Fragments in your Inventory: ", "color": "yellow"}, {"score":{"name": "$frags_in_inv","objective": "tmp"},"color":"dark_aqua"}]
tellraw @s [{"text": "Sand Ingots in your Inventory: ", "color": "yellow"}, {"score":{"name": "$ingots_in_inv","objective": "tmp"},"color":"dark_aqua"}]
execute if entity @s[tag=scoreboard] run tellraw @s [{"text": "Sand in your Bank: ", "color": "yellow"}, {"score":{"name": "@s","objective": "currency.sand"},"color":"dark_aqua"}]
execute unless entity @s[tag=scoreboard] run tellraw @s [{"text": "Sand in your Bank: ", "color": "yellow"}, {"text":"Not unlocked yet", "color": "red"}]
tellraw @s [{"text": "Fragment Count + Ingot Count (in your Inventory): ", "color": "yellow"}, {"score":{"name": "$total_frags_and_ingots_in_inv","objective": "tmp"},"color":"dark_aqua"}]
tellraw @s [{"text": "Sand value in your Inventory: ", "color": "yellow"}, {"score":{"name": "$total_sand_value_in_inv","objective": "tmp"},"color":"dark_aqua"}]
tellraw @s [{"text": "Total Sand value (Inventory + Bank): ", "color": "yellow"}, {"score":{"name": "$total_sand_value","objective": "tmp"},"color":"dark_aqua"}]
tellraw @s {"text":"---","color": "gray"}
tellraw @s [{"text": "XP: ", "color": "yellow"}, {"score":{"name": "@s","objective": "stats.xp"},"color":"dark_aqua"}]
tellraw @s [{"text": "Level: ", "color": "yellow"}, {"score":{"name": "@s","objective": "stats.level"},"color":"dark_aqua"}]
tellraw @s [{"text": "Rebirths: ", "color": "yellow"}, {"score":{"name": "@s","objective": "stats.rebirths"},"color":"dark_aqua"}]
tellraw @s [{"text": "Mining multiplier: ", "color": "yellow"}, {"score":{"name": "@s","objective": "mining.multiplier"},"color":"dark_aqua"}]
tellraw @s {"text":"---","color": "gray"}
tellraw @s [{"text": "Playtime: ", "color": "yellow"}, {"score":{"name": "$pt_hours","objective": "tmp"}, "color": "dark_green"},{"text": ":","color": "gray"},{"score": {"name": "$pt_minfix","objective": "tmp"},"color":"dark_green"},{"score": {"name": "$pt_minutes","objective": "tmp"},"color": "dark_green"},{"text": ":","color": "gray"},{"score": {"name": "$pt_secfix","objective": "tmp"},"color": "dark_green"},{"score": {"name": "$pt_seconds","objective": "tmp"},"color": "dark_green"}]
execute if score @s stats.illusionerDeaths matches 1.. run tellraw @s {"text":"---","color": "gray"}
execute if score @s stats.illusionerDeaths matches 1.. run tellraw @s [{"text": "Times killed by illusioner: ", "color": "yellow"}, {"score":{"name": "@s","objective": "stats.illusionerDeaths"},"color":"dark_aqua"}]
tellraw @s [{"text":"-----| ", "color": "gray"}, {"text": " |-----", "color": "gray"}]