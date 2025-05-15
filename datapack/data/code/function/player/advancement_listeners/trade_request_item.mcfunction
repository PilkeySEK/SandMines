advancement revoke @s only code:trade_request_item
execute if score @s player.item_use_cooldown matches 1.. run return 0
scoreboard players set @s player.item_use_cooldown 10

# TODO: Make it so that there can be more than 1 trade request at a time (rn not possible :sob:)
execute if entity @a[tag=trading.trader1] run return run tellraw @s {"text": "You cannot make a trade request at this moment. Try again in 1 minute","color": "red"}

tag @a remove tmptag
tag @s add tmptag
# basically a raycast but without the 3 functions, instead all in 1 function :]
execute at @s anchored eyes rotated ~ ~ positioned ^ ^ ^1 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run tag @a[tag=tradingEnabled,distance=..1,limit=1,sort=nearest] add trading.trader2
execute at @s anchored eyes rotated ~ ~ positioned ^ ^ ^1 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run return run function code:trading/make_trade_request
execute at @s anchored eyes rotated ~ ~ positioned ^ ^ ^2 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run tag @a[tag=tradingEnabled,distance=..1,limit=1,sort=nearest] add trading.trader2
execute at @s anchored eyes rotated ~ ~ positioned ^ ^ ^2 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run return run function code:trading/make_trade_request
execute at @s anchored eyes rotated ~ ~ positioned ^ ^ ^3 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run tag @a[tag=tradingEnabled,distance=..1,limit=1,sort=nearest] add trading.trader2
execute at @s anchored eyes rotated ~ ~ positioned ^ ^ ^3 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run return run function code:trading/make_trade_request
execute at @s anchored eyes rotated ~ ~ positioned ^ ^-1 ^1 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run tag @a[tag=tradingEnabled,distance=..1,limit=1,sort=nearest] add trading.trader2
execute at @s anchored eyes rotated ~ ~ positioned ^ ^-1 ^1 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run return run function code:trading/make_trade_request
execute at @s anchored eyes rotated ~ ~ positioned ^ ^-1 ^2 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run tag @a[tag=tradingEnabled,distance=..1,limit=1,sort=nearest] add trading.trader2
execute at @s anchored eyes rotated ~ ~ positioned ^ ^-1 ^2 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run return run function code:trading/make_trade_request
execute at @s anchored eyes rotated ~ ~ positioned ^ ^-1 ^3 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run tag @a[tag=tradingEnabled,distance=..1,limit=1,sort=nearest] add trading.trader2
execute at @s anchored eyes rotated ~ ~ positioned ^ ^-1 ^3 if entity @a[tag=tradingEnabled,distance=..1,tag=!tmptag] run return run function code:trading/make_trade_request