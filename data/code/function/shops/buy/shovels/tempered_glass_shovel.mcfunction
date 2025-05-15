# execute unless score @s currency.sand matches 2000.. run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}
# 
# scoreboard players remove @s currency.sand 2000

function code:shops/buy/buyutil/frags_or_bank {price:2500}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ᴛᴇᴍᴘᴇʀᴇᴅ ɢʟᴀꜱꜱ ꜱʜᴏᴠᴇʟ", "color": "green"}
give @s diamond_shovel[can_break={predicates:[{blocks:"sand"}],show_in_tooltip:false},custom_name='{"color":"yellow","italic":false,"text":"ᴛᴇᴍᴘᴇʀᴇᴅ ɢʟᴀꜱꜱ ꜱʜᴏᴠᴇʟ"}',unbreakable={show_in_tooltip:false},custom_data={tempered_glass_shovel:1b},enchantments={levels:{"minecraft:lure":0},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"player.block_break_speed",name:"player.block_break_speed",amount:-0.3,operation:"add_value",id:"-12749527201676953145-1357444927878410584"}],show_in_tooltip:false},hide_additional_tooltip={}] 1