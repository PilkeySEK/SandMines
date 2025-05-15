
function code:shops/buy/buyutil/frags_or_bank {price:1000}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "You bought ꜱᴘᴇᴇᴅʏ ᴘᴀɴᴛꜱ", "color": "green"}
give @s leather_leggings[item_name='{"color":"gold","text":"ꜱᴘᴇᴇᴅʏ ᴘᴀɴᴛꜱ"}',lore=['{"color":"dark_green","italic":false,"text":"Walk faster :]"}'],unbreakable={show_in_tooltip:false},custom_data={speedy_pants:1b}] 1