function code:shops/buy/buyutil/frags_or_bank {price:750}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought a ꜰʀᴀɢᴍᴇɴᴛ ʙʟᴀᴅᴇ", "color": "green"}
give @s wooden_sword[item_name='{"color":"gold","text":"ꜰʀᴀɢᴍᴇɴᴛ ʙʟᴀᴅᴇ"}',lore=['{"color":"gray","italic":false,"text":"A weapon better than a shovel (maybe)"}'],unbreakable={show_in_tooltip:false},custom_data={fragment_sword:1b}] 1