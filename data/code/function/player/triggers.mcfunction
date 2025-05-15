scoreboard players enable @s spawn
scoreboard players enable @s[tag=is_admin] kickall
scoreboard players enable @s[tag=is_dev] kickall
# scoreboard players enable @s[tag=is_admin] afk
# scoreboard players enable @s[tag=is_dev] afk
scoreboard players enable @s discord
scoreboard players enable @s[tag=scoreboard] pay_into_bank
scoreboard players enable Hakubia terracotta_lock
scoreboard players enable @s[tag=scoreboard] request_from_bank
scoreboard players enable @s stats
scoreboard players enable @s Rules
scoreboard players enable @s hat
scoreboard players enable @s[tag=trading.trader2] trade
scoreboard players enable @s[tag=trading_now] confirm_trade
scoreboard players enable @s[tag=trading_now] cancel_trade
scoreboard players reset @s[tag=!trading.trader2] trade
scoreboard players reset @s[tag=!trading_now] confirm_trade
scoreboard players reset @s[tag=!trading_now] cancel_trade
scoreboard players enable @s sell_treasure
scoreboard players enable @s[tag=unlockedOneCosmetic] cosmetics

execute if score @s spawn matches 1.. run function code:player/triggers/spawn
execute if score @s kickall matches 1.. as @a run function code:player/triggers/kickall
execute if score @s Rules matches 1.. run function code:player/triggers/rules
# too broken frfr
# execute if score @s afk matches 1.. at @s run function code:player/triggers/afk
execute if score @s discord matches 1.. run function code:player/triggers/discord
execute if score @s pay_into_bank matches 1.. run function code:player/triggers/pay_into_bank
execute if score @s request_from_bank matches 1.. run function code:player/triggers/request_from_bank
# convenience + cleaner code for this specific trigger
scoreboard players set @s request_from_bank 0
execute if score @s stats matches 1.. run function code:player/triggers/stats
execute if score @s hat matches 1.. run function code:player/triggers/hat
execute if score @s trade matches 1.. run function code:player/triggers/trade
execute if score @s confirm_trade matches 1.. run function code:player/triggers/confirm_trade
execute if score @s cancel_trade matches 1.. run function code:player/triggers/cancel_trade
execute if score @s sell_treasure matches 1.. run function code:player/triggers/sell_treasure
execute if score @s cosmetics matches 1.. run function code:player/triggers/cosmetics

execute if score Hakubia terracotta_lock matches 1 run tellraw Hakubia {"text": "lock is on", "color": "green"}
execute if score Hakubia terracotta_lock matches 1 run fill 8 63 90 7 63 89 minecraft:sand
execute if score Hakubia terracotta_lock matches 1 run setblock 8 63 90 minecraft:lime_glazed_terracotta replace
execute if score Hakubia terracotta_lock matches 1 run scoreboard players set Hakubia terracotta_lock 2
execute if score Hakubia terracotta_lock matches 3 run tellraw Hakubia {"text": "lock is off", "color": "red"}
execute if score Hakubia terracotta_lock matches 3 run fill 8 63 90 7 63 89 minecraft:light_gray_glazed_terracotta
execute if score Hakubia terracotta_lock matches 3 run scoreboard players set Hakubia terracotta_lock 0