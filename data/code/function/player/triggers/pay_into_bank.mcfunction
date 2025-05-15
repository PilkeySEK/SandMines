scoreboard players set @s pay_into_bank 0

execute unless entity @s[tag=scoreboard] run return run tellraw @s {"text": "Please enable the bank", "color": "red"}

# please add possible other currencies accordingly

execute store result score $sand_amount tmp run clear @s *[custom_data~{sand_frag:1b}]
scoreboard players operation @s currency.sand += $sand_amount tmp

scoreboard players operation $total_sand_amount tmp = $sand_amount tmp

execute store result score $sand_amount tmp run clear @s *[custom_data~{sand_ingot:1b}]
scoreboard players operation $sand_amount tmp *= 64 constant
scoreboard players operation @s currency.sand += $sand_amount tmp

scoreboard players operation $total_sand_amount tmp += $sand_amount tmp

tellraw @s [{"score":{"name": "$total_sand_amount", "objective": "tmp"}, "color": "dark_aqua"}, {"text": " sand has been deposited into the bank", "color": "green"}]
