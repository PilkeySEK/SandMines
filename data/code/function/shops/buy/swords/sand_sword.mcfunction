function code:shops/buy/buyutil/frags_or_bank {price:2500}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ꜱᴀɴᴅ ʙʟᴀᴅᴇ", "color": "green"}
give @s stone_sword[item_name='{"color":"gold","text":"ꜱᴀɴᴅ ʙʟᴀᴅᴇ"}',lore=['{"color":"gray","italic":false,"text":"Deals a good amount of damage"}'],custom_data={sand_sword:1b},unbreakable={show_in_tooltip:false}] 1