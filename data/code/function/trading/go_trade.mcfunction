# Other's items 1: -109 113 50
# Your items 1:    -111 113 50
# Other's items 2: -107 113 50
# Your items 2:    -105 113 50

tag @a[tag=trading.trader1] add trading_now.trader1
tag @a[tag=trading.trader1] add trading_now
tag @a[tag=trading.trader2] add trading_now.trader2
tag @a[tag=trading.trader2] add trading_now
tag @a remove trading.trader1
tag @a remove trading.trader2
tag @a remove tmptag

data remove block -109 113 50 Items
data remove block -111 113 50 Items
data remove block -107 113 50 Items
data remove block -105 113 50 Items
data remove block -109 113 50 Lock
data remove block -111 113 50 Lock
data remove block -107 113 50 Lock
data remove block -105 113 50 Lock

# -106 114 48
# -110 114 48
tp @a[tag=trading_now.trader1] -106 114 48
tp @a[tag=trading_now.trader2] -110 114 48

# 20 * 60 * 5 = 6000
scoreboard players set trading_time_left tmp 6000
bossbar add trading_time_left {"text": "Trading time left", "color": "gold"}
bossbar set minecraft:trading_time_left players @a[tag=trading_now]
bossbar set trading_time_left color pink
bossbar set trading_time_left style progress
bossbar set trading_time_left max 6000

scoreboard players set trade_cancelled tmp 0

tellraw @a[tag=trading_now] {"text": "How trading works: You put the items you wanna exchange in the \"Your items\" chest, and you can see the items that the other player put into their chest in the \"Other's items\" chest. When you are done, run /trigger confirm_trade."}