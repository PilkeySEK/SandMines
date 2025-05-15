function code:shops/buy/buyutil/frags_or_bank {price:9000}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ᴄᴏᴍᴘʀᴇꜱꜱᴇᴅ ꜱᴀɴᴅ ꜱʜᴏᴠᴇʟ", "color": "green"}
give @s golden_shovel[custom_data={mining_spread:1b,mining_spread_level:1},item_name='{"text":"ᴄᴏᴍᴘʀᴇꜱꜱᴇᴅ ꜱᴀɴᴅ ꜱʜᴏᴠᴇʟ","color":"yellow"}',lore=['{"text":"Mines a random adjacent block too!","color":"gray"}'],can_break={predicates:[{blocks:["minecraft:sand"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}]



## the old compressed snad shovel
# return run tellraw @s {"text": "This item is currently unavaiable, ask in the discord (/trigger discord) to learn why", "color": "red"}
# 
# function code:shops/buy/buyutil/frags_or_bank {price:9000}
# 
# execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}
# 
# ## REMOVED
# # # 5*60*60*20 = 360,000
# # execute unless score @s stats.playtime matches 360000 run tellraw @s {"text": "You need at least 5 hours of playtime", "color": "red"}
# 
# tellraw @s {"text": "You bought a ᴄᴏᴍᴘʀᴇꜱꜱᴇᴅ ꜱᴀɴᴅ ꜱʜᴏᴠᴇʟ", "color": "green"}
# give @s golden_shovel[minecraft:can_break={predicates:[{blocks:"minecraft:sand"}],show_in_tooltip:0b},minecraft:attribute_modifiers={show_in_tooltip:0b,modifiers:[{type:"minecraft:player.block_break_speed",amount:1d,operation:"add_value",name:"minecraft:58fc9047-cb4f-4936-9620-60b9fa1c7d32",uuid:[I; 1492947015, -883996362, -1776262983, -98796238]}]},minecraft:unbreakable={show_in_tooltip: 0b},minecraft:custom_name='{"color":"#FFD700","italic":false,"text":"ᴄᴏᴍᴘʀᴇꜱꜱᴇᴅ ꜱᴀɴᴅ ꜱʜᴏᴠᴇʟ"}',minecraft:enchantments={show_in_tooltip: 0b,levels:{}},minecraft:custom_data={compressed_sand_shovel:1b},minecraft:hide_additional_tooltip={}]