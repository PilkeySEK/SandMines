execute if score @s cosmetics matches 1 run tellraw @s [{"text":"-----| ", "color": "gray"}, {"text": "ᴄᴏꜱᴍᴇᴛɪᴄꜱ", "color": "gold"}, {"text": " |-----", "color": "gray"}]
execute if score @s cosmetics matches 1 if entity @s[tag=cosmetic.gold_trail] run tellraw @s {"text": "[gold trail]","color": "green","clickEvent": {"action": "run_command","value": "/trigger cosmetics set 2"},"hoverEvent": {"action": "show_text","contents": "Click to disable"}}
execute if score @s cosmetics matches 1 if entity @s[tag=cosmetic.disabled.gold_trail] run tellraw @s {"text": "[gold trail]","color": "gray","clickEvent": {"action": "run_command","value": "/trigger cosmetics set 3"},"hoverEvent": {"action": "show_text","contents": "Click to enable"}}
execute if score @s cosmetics matches 1 if entity @s[tag=!cosmetic.gold_trail,tag=!cosmetic.disabled.gold_trail] run tellraw @s {"text": "[gold trail]","color": "red","hoverEvent": {"action": "show_text","contents": "You do not have this cosmetic unlocked yet"}}

execute if score @s cosmetics matches 1 if entity @s[tag=cosmetic.ground_confetti] run tellraw @s {"text": "[ground confetti]","color": "green","clickEvent": {"action": "run_command","value": "/trigger cosmetics set 4"},"hoverEvent": {"action": "show_text","contents": "Click to disable"}}
execute if score @s cosmetics matches 1 if entity @s[tag=cosmetic.disabled.ground_confetti] run tellraw @s {"text": "[ground confetti]","color": "gray","clickEvent": {"action": "run_command","value": "/trigger cosmetics set 5"},"hoverEvent": {"action": "show_text","contents": "Click to enable"}}
execute if score @s cosmetics matches 1 if entity @s[tag=!cosmetic.ground_confetti,tag=!cosmetic.disabled.ground_confetti] run tellraw @s {"text": "[ground confetti]","color": "red","hoverEvent": {"action": "show_text","contents": "You do not have this cosmetic unlocked yet"}}

execute if score @s cosmetics matches 1 if entity @s[tag=cosmetic.magical_plate] run tellraw @s {"text": "[magical plate]","color": "green","clickEvent": {"action": "run_command","value": "/trigger cosmetics set 6"},"hoverEvent": {"action": "show_text","contents": "Click to disable"}}
execute if score @s cosmetics matches 1 if entity @s[tag=cosmetic.disabled.magical_plate] run tellraw @s {"text": "[magical plate]","color": "gray","clickEvent": {"action": "run_command","value": "/trigger cosmetics set 7"},"hoverEvent": {"action": "show_text","contents": "Click to enable"}}
execute if score @s cosmetics matches 1 if entity @s[tag=!cosmetic.magical_plate,tag=!cosmetic.disabled.magical_plate] run tellraw @s {"text": "[magical plate]","color": "red","hoverEvent": {"action": "show_text","contents": "You do not have this cosmetic unlocked yet"}}

# ==
execute if score @s cosmetics matches 2 if entity @s[tag=cosmetic.gold_trail] run tag @s add cosmetic.disabled.gold_trail
execute if score @s cosmetics matches 2 if entity @s[tag=cosmetic.gold_trail] run tag @s remove cosmetic.gold_trail

execute if score @s cosmetics matches 3 if entity @s[tag=cosmetic.disabled.gold_trail] run tag @s add cosmetic.gold_trail
execute if score @s cosmetics matches 3 if entity @s[tag=cosmetic.disabled.gold_trail] run tag @s remove cosmetic.disabled.gold_trail
# ==
execute if score @s cosmetics matches 4 if entity @s[tag=cosmetic.ground_confetti] run tag @s add cosmetic.disabled.ground_confetti
execute if score @s cosmetics matches 4 if entity @s[tag=cosmetic.ground_confetti] run tag @s remove cosmetic.ground_confetti

execute if score @s cosmetics matches 5 if entity @s[tag=cosmetic.disabled.ground_confetti] run tag @s add cosmetic.ground_confetti
execute if score @s cosmetics matches 5 if entity @s[tag=cosmetic.disabled.ground_confetti] run tag @s remove cosmetic.disabled.ground_confetti
# ==
execute if score @s cosmetics matches 6 if entity @s[tag=cosmetic.magical_plate] run tag @s add cosmetic.disabled.magical_plate
execute if score @s cosmetics matches 6 if entity @s[tag=cosmetic.magical_plate] run tag @s remove cosmetic.magical_plate

execute if score @s cosmetics matches 7 if entity @s[tag=cosmetic.disabled.magical_plate] run tag @s add cosmetic.magical_plate
execute if score @s cosmetics matches 7 if entity @s[tag=cosmetic.disabled.magical_plate] run tag @s remove cosmetic.disabled.magical_plate
# ==

execute if score @s cosmetics matches 2.. run tag @s add triggerAgain

scoreboard players set @s cosmetics 0

execute if entity @s[tag=triggerAgain] run scoreboard players set @s cosmetics 1
tag @s remove triggerAgain