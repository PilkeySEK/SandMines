execute if entity @s[tag=cosmetic.ground_confetti] run return run tellraw @s {"text": "You already bought that cosmetic","color": "red"}
execute if entity @s[tag=cosmetic.disabled.ground_confetti] run return run tellraw @s {"text": "You already bought that cosmetic","color": "red"}

function code:shops/buy/buyutil/frags_or_bank {price:7500}

execute if score $success tmp matches 0 run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

tellraw @s {"text": "Purchased the Ground Confetti cosmetic!","color": "green"}
tag @s add cosmetic.ground_confetti

tellraw @s[tag=!unlockedOneCosmetic] [{"text": "TIP: ","color": "gray"},{"text": "Manage your cosmetics with ","color":"aqua"},{"text": "/trigger cosmetics","color": "light_purple","clickEvent": {"action": "run_command","value": "/trigger cosmetics"},"hoverEvent": {"action": "show_text","contents": "Click to run command"}}]
# add this to the end of every cosmetic buy code because it is useful for the triggers (hide cosmetics trigger from players that have no cosmetics yet)
tag @s add unlockedOneCosmetic
