scoreboard players reset @s spawn

execute if entity @s[tag=trading_now] unless score trade_cancelled tmp matches 1 run return run tellraw @s {"text": "Cannot go to spawn now! Currently trading. Cancel trade with /trigger cancel_trade","color": "red"}

tp @s -87 64 0 -90 0

tellraw @s {"text":"Teleported you to spawn!", "color": "green"}