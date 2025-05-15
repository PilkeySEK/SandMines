## INFO
# the player who made the request should have "trading.trader1" tag
# and the one reveiving the request should have "trading.trader2" tag

tag @s add trading.trader1

tellraw @a[tag=trading.trader2,limit=1,sort=nearest] [{"selector":"@a[tag=trading.trader1,limit=1,sort=nearest]","color":"dark_aqua"},{"text":" wants to trade with you!","color":"aqua"}]
tellraw @a[tag=trading.trader2,limit=1,sort=nearest] [{"text":"[Accept] ","color":"green","clickEvent":{"action": "run_command","value": "/trigger trade set 1001"},\
                        "hoverEvent": {"action": "show_text","contents": "Click to accept trade request"}},\
                        {"text": "[Deny]","color": "red","clickEvent": {"action": "run_command","value": "/trigger trade set 1002"},\
                        "hoverEvent": {"action": "show_text","contents": "Click to deny trade request"}}]
# 20 * 60 * 60 = 72000
scoreboard players set @s trade_request_expiration 72000