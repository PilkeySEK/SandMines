execute unless items entity @s weapon.mainhand air store result score multiplier tmp run data get entity @s SelectedItem.count
scoreboard players set base_value tmp 0
execute if items entity @s weapon.mainhand *[custom_data~{common_treasure:true}] run scoreboard players set base_value tmp 40
execute if items entity @s weapon.mainhand *[custom_data~{uncommon_treasure:true}] run scoreboard players set base_value tmp 100
execute if items entity @s weapon.mainhand *[custom_data~{rare_treasure:true}] run scoreboard players set base_value tmp 200
execute if items entity @s weapon.mainhand *[custom_data~{epic_treasure:true}] run scoreboard players set base_value tmp 500
execute if items entity @s weapon.mainhand *[custom_data~{godly_treasure:true}] run scoreboard players set base_value tmp 3000

scoreboard players operation base_value tmp *= multiplier tmp