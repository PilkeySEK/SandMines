execute as @a if score @s trade_request_expiration matches 1.. run scoreboard players remove @s trade_request_expiration 1
execute as @a if score @s trade_request_expiration matches 0 run tellraw @s {"text": "Trade request has expired.","color": "aqua"}
execute as @a if score @s trade_request_expiration matches 0 run tag @a remove trading.trader1
execute as @a if score @s trade_request_expiration matches 0 run tag @a remove trading.trader2
execute as @a if score @s trade_request_expiration matches 0 run scoreboard players set @s trade_request_expiration -1
