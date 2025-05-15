## Arguments
# price = the price of the item/action (like "100" for 100 sand frags)
## Return values
# 1 = success -> give them the item or whatever should happen
# 0 = failure -> not enough money, display the appropriate message to the player
# You can also use the `$success` fake player in the `tmp` scoreboard

## NOTE that the function will automatically remove the bank sand or automatically clear the sand fragments

## Possible optimizations:
# not doing `if score @s currency.sand >= $price tmp run scoreboard players set $success tmp 1`
#   and instead doing `store result score $success tmp if score @s currency.sand >= $price tmp`
#   (without the `run` at the end, so its just execute store shenanigans)
#   (decided to leave it out since it doesnt matter that much, this is not a ticking function, and also because the code becomes less readable)

scoreboard players set $success tmp 0
$scoreboard players set $price tmp $(price)

execute if entity @s[tag=scoreboard] if score @s currency.sand >= $price tmp run scoreboard players set $success tmp 1
$execute if score $success tmp matches 1 run scoreboard players remove @s currency.sand $(price)
execute if score $success tmp matches 1 run return 1

execute store result score $clear tmp run clear @s *[custom_data~{sand_frag:1b}] 0
execute store result score $clear2 tmp run clear @s *[custom_data~{sand_ingot:1b}] 0
scoreboard players operation $clear2 tmp *= 64 constant
scoreboard players operation $clear tmp += $clear2 tmp
execute unless score $clear tmp >= $price tmp run return 0
scoreboard players set $success tmp 1
$execute store result score $clearres tmp run clear @s *[custom_data~{sand_frag:1b}] $(price)
$execute if score $clearres tmp matches $(price) run return 1
$scoreboard players set $clearleft tmp $(price)
scoreboard players operation $clearleft tmp -= $clearres tmp
scoreboard players operation $ingotclear tmp = $clearleft tmp
scoreboard players operation $ingotclear tmp /= 64 constant
scoreboard players operation $fraggive tmp = $clearleft tmp
scoreboard players operation $fraggive tmp %= 64 constant
execute if score $fraggive tmp matches 64.. run tellraw @s {"text": "Error 1","color": "red"}
execute if score $fraggive tmp matches 64.. run return run tellraw @s {"text": "Please report this to a dev","color": "red"}
scoreboard players operation $fraggive tmp -= 64 constant
scoreboard players operation $fraggive tmp *= -1 constant
execute if score $fraggive tmp matches 64 run scoreboard players set $fraggive tmp 0
execute unless score $fraggive tmp matches 0 run scoreboard players add $ingotclear tmp 1
execute store result storage sandmines:macros ingotclear int 1 run scoreboard players get $ingotclear tmp
execute store result storage sandmines:macros fraggive int 1 run scoreboard players get $fraggive tmp
execute unless score $fraggive tmp matches 0 run function code:shops/buy/buyutil/frags_or_bank/ingot_clear_macro with storage sandmines:macros
execute if score $fraggive tmp matches 0 run function code:shops/buy/buyutil/frags_or_bank/ingot_clear_macro2 with storage sandmines:macros

execute if score $success tmp matches 1 run return 1

scoreboard players set $success tmp 0
return 0