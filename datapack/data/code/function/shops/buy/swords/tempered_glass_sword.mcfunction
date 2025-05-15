function code:shops/buy/buyutil/frags_or_bank {price:7500}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ᴛᴇᴍᴘᴇʀᴇᴅ ɢʟᴀꜱꜱ ʙʟᴀᴅᴇ", "color": "green"}
give @s diamond_sword[custom_name='{"color":"yellow","italic":false,"text":"ᴛᴇᴍᴘᴇʀᴇᴅ ɢʟᴀꜱꜱ ʙʟᴀᴅᴇ"}',lore=['{"color":"gray","italic":false,"text":"deals too much damage"}'],unbreakable={show_in_tooltip:false},custom_data={tempered_glass_sword:1b},enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:4,operation:"add_value",id:"805773473-431470357-11863419451887075642"}],show_in_tooltip:false},hide_additional_tooltip={}] 1