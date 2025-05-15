execute unless entity @s[tag=scoreboard] run return run tellraw @s {"text": "Please enable or unlock the bank first", "color": "red"}
execute if score @s request_from_bank matches 1 run tellraw @s [{"text": "It looks like you're trying to request ", "color": "dark_green"}, {"text": "1", "color": "dark_aqua"}, {"text": " sand fragment from the bank. This could be an error:", "color": "dark_green"}, {"text":"\nSyntax: ", "color": "blue"}, {"text": "/trigger request_from_bank set value <how much to request>", "color": "light_purple"}]
execute if score @s request_from_bank > @s currency.sand run return run tellraw @s {"text": "You do not have enough sand fragments in the bank", "color": "red"}

scoreboard players operation @s currency.sand -= @s request_from_bank
execute store result storage tmp request_from_bank.count int 1 run scoreboard players get @s request_from_bank
function code:player/triggers/request_from_bank/macro with storage tmp request_from_bank

tellraw @s [{"text": "You recieved ", "color": "green"}, {"score":{"name": "@s", "objective": "request_from_bank"}, "color": "dark_aqua"}, {"text": " sand fragments from the bank", "color": "green"}]

# technically unnecessary, since its already in triggers.mcfunction
scoreboard players set @s request_from_bank 0