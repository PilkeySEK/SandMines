execute if score @s trade matches 1001 run function code:trading/accept_trade_request
execute if score @s trade matches 1002 run function code:trading/deny_trade_request

scoreboard players set @s trade 0