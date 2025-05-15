scoreboard players set @s cancel_trade 0

tellraw @a[tag=trading_now] {"text": "Trade cancelled due to maual cancel! You have 1 minute to take your items out of the chest.","color": "aqua"}
scoreboard players set trade_cancelled tmp 1
scoreboard players set trading_time_left tmp 1200