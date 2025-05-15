function code:shops/buy/buyutil/frags_or_bank {price:2500}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "Purchased a Fishing Rod!","color": "green"}

give @s fishing_rod[custom_data={fishing_rod:true, fishing:true}, item_name='{"text":"ꜰɪꜱʜɪɴɢ ʀᴏᴅ","color":"yellow"}']
