# execute store result score $sand_amount tmp run clear @s *[custom_data~{sand_ingot:1b}] 0
# # 64 * 3 = 192
# execute if score @s currency.sand matches 192.. if entity @s[tag=scoreboard] run tag @s add scoreboard_buy
# execute unless entity @s[tag=scoreboard_buy] unless score $sand_amount tmp matches 3.. run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}
# 
# execute if entity @s[tag=scoreboard_buy] run scoreboard players remove @s currency.sand 192
# execute unless entity @s[tag=scoreboard_buy] run clear @s *[custom_data~{sand_ingot:1b}] 3

function code:shops/buy/buyutil/frags_or_bank {price:192}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ꜱᴀɴᴅ ꜱʜᴏᴠᴇʟ", "color": "green"}
give @s stone_shovel[can_break={predicates:[{blocks:"sand"}],show_in_tooltip:false},custom_name='{"color":"yellow","italic":false,"text":"ꜱᴀɴᴅ ꜱʜᴏᴠᴇʟ"}',unbreakable={show_in_tooltip:false},custom_data={sand_shovel:1b},enchantments={levels:{"minecraft:lure":0},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"player.block_break_speed",name:"player.block_break_speed",amount:-0.3,operation:"add_value",id:"-231681511306270108-16821742301424224964"}],show_in_tooltip:false},hide_additional_tooltip={}] 1

# tag @s remove scoreboard_buy