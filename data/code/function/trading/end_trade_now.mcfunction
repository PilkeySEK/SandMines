scoreboard players set @a[tag=trading_now] spawn 1
tellraw @a[tag=trading_now] {"text": "Trade ended.","color": "aqua"}
tag @a remove trading_now
tag @a remove trading_now.confirmed
tag @a remove trading_now.trader1
tag @a remove trading_now.trader2

bossbar set trading_time_left players