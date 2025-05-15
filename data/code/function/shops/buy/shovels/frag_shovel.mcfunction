## commented out code (and not deleted it) due to the frags_or_bank.mcfunction still being pretty new

# execute store result score $sand_amount tmp run clear @s *[custom_data~{sand_frag:1b}] 0
# execute if score @s currency.sand matches 40.. if entity @s[tag=scoreboard] run tag @s add scoreboard_buy
# execute unless entity @s[tag=scoreboard_buy] unless score $sand_amount tmp matches 50.. run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}
# 
# execute if entity @s[tag=scoreboard_buy] run scoreboard players remove @s currency.sand 40
# execute unless entity @s[tag=scoreboard_buy] run clear @s *[custom_data~{sand_frag:1b}] 50

function code:shops/buy/buyutil/frags_or_bank {price:40}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ꜰʀᴀɢᴍᴇɴᴛ ꜱʜᴏᴠᴇʟ", "color": "green"}
give @s wooden_shovel[can_break={predicates:[{blocks:"sand"}],show_in_tooltip:false},custom_name='{"color":"yellow","italic":false,"text":"ꜰʀᴀɢᴍᴇɴᴛ ꜱʜᴏᴠᴇʟ"}',unbreakable={show_in_tooltip:false},custom_data={frag_shovel:1b},enchantments={levels:{"minecraft:lure":0},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"player.block_break_speed",name:"player.block_break_speed",amount:-0.3,operation:"add_value",id:"1492947015-883996362-1776262983-98796238"}],show_in_tooltip:false},hide_additional_tooltip={}] 1

# execute if entity @s[tag=scoreboard_buy] run tag @s remove scoreboard_buy