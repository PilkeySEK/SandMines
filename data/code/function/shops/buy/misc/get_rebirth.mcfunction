execute unless entity @s[tag=scoreboard] run return run tellraw @s {"text": "You do not have the bank unlocked", "color": "red"}
execute unless score @s stats.level matches 64.. run return run tellraw @s {"text": "You do not have enough levels for that", "color": "red"}

scoreboard players set @s stats.level 0
scoreboard players set @s stats.xp 0

scoreboard players add @s stats.rebirths 1
scoreboard players add @s mining.multiplier 1

tellraw @s {"text": "You just rebirthed!", "color": "green"}
tellraw @s {"text": "+1 mining multiplier", "color": "aqua"}

tellraw @a [{"selector": "@s", "color": "dark_aqua"}, {"text": " just rebirthed!", "color": "aqua"}]