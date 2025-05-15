execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit3] run playsound entity.villager.hurt master @a ~ ~ ~ 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit3] run tag @s add hit1
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit3] run tag @s add nohit1
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit3] run tag @s remove hit3
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit2] run playsound entity.villager.no master @a ~ ~ ~ 1
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit2] run tag @s add hit3
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit2] run tag @s remove hit2
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit1,tag=!nohit1] run playsound entity.villager.no master @a ~ ~ ~ 0.5
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit1,tag=!nohit1] run tag @s add hit2
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=hit1,tag=!nohit1] run tag @s remove hit1
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[tag=nohit1] run tag @s remove nohit1