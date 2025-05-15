execute if entity @s[tag=scoreboard] run return run tellraw @s {"text":"You have already unlocked the bank", "color": "red"}
execute unless score @s stats.level matches 23.. run return run tellraw @s {"text":"You do not have enough levels for that", "color": "red"}

scoreboard players remove @s stats.level 23
tag @s add scoreboard
scoreboard players set @s currency.sand 0

tellraw @s {"text": "You have unlocked the bank! You will now no longer recieve physical sand fragments, they will be deposited into the bank instead", "color": "green"}
tellraw @s [{"text": "Use ", "color": "green"},{"text":"/trigger pay_into_bank", "color":"light_purple"},{"text":" to deposit all your remaining physical sand fragments and ingots into the bank","color":"green"}]
tellraw @a [{"selector": "@s", "color": "dark_aqua"}, {"text": " just unlocked the bank", "color": "aqua"}]