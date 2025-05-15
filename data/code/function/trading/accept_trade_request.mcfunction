execute unless entity @s[tag=trading.trader2] run return run tellraw @s {"text": "Trade request expired.","color": "aqua"}

execute if entity @a[tag=trading_now.trader1] run tellraw @a[tag=trading.trader1] {"text": "The trade request was accepted but there are currently people trading. Trading room occupied, try again in a few minutes","color": "aqua"}
execute if entity @a[tag=trading_now.trader1] run return run tellraw @s {"text": "There are currently people trading. Trading room occupied, try again in a few minutes","color": "aqua"}

function code:trading/go_trade