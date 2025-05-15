execute unless entity @s[tag=trading.trader2] run return run tellraw @s {"text": "Trade request expired.","color": "aqua"}

tellraw @a[tag=trading.trader1] {"text": "Trade request denied :(","color": "aqua"}
scoreboard players set @a[tag=trading.trader1] trade_request_expiration -1
tag @a remove trading.trader1
tag @a remove trading.trader2