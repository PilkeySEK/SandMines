# Other's items 1: -109 113 50
# Your items 1:    -111 113 50
# Other's items 2: -107 113 50
# Your items 2:    -105 113 50

clear @a *[custom_data~{clear:true}]

# set other's items 1
data modify block -109 113 50 Items set from block -105 113 50 Items
data modify block -109 113 50 Items[].components."minecraft:custom_data".clear set value true
# set other's items 2
data modify block -107 113 50 Items set from block -111 113 50 Items
data modify block -107 113 50 Items[].components."minecraft:custom_data".clear set value true

execute store result bossbar trading_time_left value run scoreboard players get trading_time_left tmp
scoreboard players remove trading_time_left tmp 1
execute if score trading_time_left tmp matches ..0 if score trade_cancelled tmp matches 0 run tellraw @a[tag=trading_now] {"text": "Trade cancelled! You have 1 minute to take your items out of the chest.","color": "aqua"}
execute if score trading_time_left tmp matches ..0 if score trade_cancelled tmp matches 0 run scoreboard players set trading_time_left tmp 1200
execute if score trading_time_left tmp matches ..0 if score trade_cancelled tmp matches 0 run scoreboard players set trade_cancelled tmp 1

execute if score trading_time_left tmp matches ..0 if score trade_cancelled tmp matches 1 run function code:trading/end_trade_now

execute store result score trade_count tmp if entity @a[tag=trading_now]
execute unless score trade_count tmp matches 2 run tellraw @a[tag=trading_now] {"text": "Trade cancelled due to player leaving! You have 1 minute to take your items out of the chest.","color": "aqua"}
execute unless score trade_count tmp matches 2 run scoreboard players set trade_cancelled tmp 1
execute unless score trade_count tmp matches 2 run scoreboard players set trading_time_left tmp 1200