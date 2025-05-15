# @e[type=item,sort=nearest,limit=1] = the item that dropped while doing so
# @s = the player that mined the block of sand (most likely)

execute if entity @s[tag=scoreboard] run scoreboard players operation @s currency.sand += @s mining.multiplier
execute if entity @s[tag=!scoreboard] run give @s yellow_dye[custom_name='{"color":"yellow","italic":false,"text":"Sand Fragment"}',custom_data={sand_frag:1b},hide_additional_tooltip={}] 1

execute if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run playsound entity.villager.celebrate block @a ~ ~ ~ 1 1
execute if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run scoreboard players add @s jerry 1
scoreboard players add @s stats.xp 1
execute if score @s stats.xp matches 64.. run scoreboard players add @s stats.level 1
execute if score @s stats.xp matches 64.. run title @s actionbar {"text": "+1 level", "color": "dark_green"}
execute if score @s stats.xp matches 64.. run scoreboard players set @s actionbar.immunitytime 15
execute if score @s stats.xp matches 64.. run scoreboard players set @s stats.xp 0

execute if items entity @s weapon.mainhand *[custom_data~{mining_spread:1b}] run function code:mining/sand/mining_spread

# 1/100 chance to get treasure
execute store result score random tmp run random value 1..100
execute if score random tmp matches 50 run function code:mining/sand/treasure