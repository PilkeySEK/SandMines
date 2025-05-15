# Other's items 1: -109 113 50
# Your items 1:    -111 113 50
# Other's items 2: -107 113 50
# Your items 2:    -105 113 50

tellraw @a[tag=trading_now] [{"selector": "@s","color": "dark_aqua"},{"text": " confirmed the trade!","color": "aqua"}]
execute unless entity @a[tag=trading_now.confirmed] run tellraw @a[tag=trading_now] [{"text": "Waiting for other player to confirm","color": "aqua"}]
tag @s add trading_now.confirmed
execute if entity @s[tag=trading_now.trader1] unless entity @a[tag=trading_now.trader2, tag=trading_now.confirmed] run tellraw @a[tag=trading_now.trader2] {"text": "/trigger confirm_trade to confirm the trade too!","color": "aqua"}
execute if entity @s[tag=trading_now.trader2] unless entity @a[tag=trading_now.trader1, tag=trading_now.confirmed] run tellraw @a[tag=trading_now.trader1] {"text": "/trigger confirm_trade to confirm the trade too!","color": "aqua"}

execute unless entity @a[tag=trading_now,tag=!trading_now.confirmed] run function code:trading/execute_trade

# lock chests so that players cant put stuff in/out anymore
data modify block -111 113 50 Lock set value "random string of letters it doesnt even matter 9832987432982347979384217908243"
data modify block -105 113 50 Lock set value "random string of letters it doesnt even matter 9832987432982347979384217908243"