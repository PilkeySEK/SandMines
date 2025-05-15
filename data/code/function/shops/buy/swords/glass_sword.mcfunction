function code:shops/buy/buyutil/frags_or_bank {price:4000}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ɢʟᴀꜱꜱ ʙʟᴀᴅᴇ", "color": "green"}
give @s iron_sword[custom_name='{"color":"yellow","italic":false,"text":"ɢʟᴀꜱꜱ ʙʟᴀᴅᴇ"}',lore=['{"color":"gray","italic":false,"text":"deals a lot of damage"}'],unbreakable={show_in_tooltip:false},custom_data={glass_sword:1b},enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:3,operation:"add_value",id:"-1841775478496848231-16683900321672005117"}],show_in_tooltip:false},hide_additional_tooltip={}] 1