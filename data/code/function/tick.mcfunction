execute if score $500ticktime tmp matches 500.. run scoreboard players set $500ticktime tmp 0
scoreboard players add $500ticktime tmp 1

execute unless score $disable_sidebar_shuffle tmp matches 1 if score $500ticktime tmp matches 166 run scoreboard objectives setdisplay sidebar currency.sand
execute unless score $disable_sidebar_shuffle tmp matches 1 if score $500ticktime tmp matches 333 run scoreboard objectives setdisplay sidebar stats.mined_sand
execute unless score $disable_sidebar_shuffle tmp matches 1 if score $500ticktime tmp matches 500 run scoreboard objectives setdisplay sidebar stats.level

# cuz it bugs out sometimes on world start smh
execute if score $500ticktime tmp matches 1 run function code:shops/refill/refill_start

## Mining
    # Timer
        scoreboard players remove @e[tag=block_replace_marker,type=marker] block_replace 1
        #

    # Sand
        execute as @e[type=item,nbt={Item:{id:"minecraft:sand"}}] at @s align xyz positioned ~.5 ~ ~.5 unless data entity @s Thrower run function code:mining/sand/replace
        scoreboard players set @a detection.mined_sand 0

        execute as @e[tag=sand_replace_marker,scores={block_replace=45}] at @s run function code:mining/sand/change_state
        execute as @e[tag=sand_replace_marker,scores={block_replace=30}] at @s run function code:mining/sand/change_state
        execute as @e[tag=sand_replace_marker,scores={block_replace=15}] at @s run function code:mining/sand/change_state
        execute as @e[tag=sand_replace_marker,scores={block_replace=0}] at @s run function code:mining/sand/change_state

        execute as @e[tag=sand_replace_marker,scores={block_replace=0}] at @s run function code:mining/sand/fill

## Dropped Items
#execute as @e[type=item] run tp @s @a[limit=1,sort=random]
execute as @e[type=item] if data entity @s Thrower run data modify entity @s Owner set from entity @s Thrower
#execute as @e[type=item] run data modify entity @s PickupDelay set value 0s

## Shop tick
# using the distance=..6 for performance reasons
execute as @e[type=chest_boat, tag=shop_marker] at @s if entity @a[distance=..6] run function code:shops/tick

## Player Tick
execute as @a run function code:player/player_tick

#spawn protection
tag @a remove protected
function code:spawn_prot/detection
#thing
clear Hakubia light_gray_glazed_terracotta
effect give @a[tag=protected] resistance 1 255 true
effect give @a[tag=protected] weakness 1 255 true
effect give @a[tag=protected] saturation 1 0 true
execute as @a[tag=protected] run attribute @s generic.knockback_resistance base set 1
execute as @a[tag=!protected] run attribute @s generic.knockback_resistance base set 0


function code:misc/vote_ad

scoreboard players add @a stats.playtime 1
execute as @a run function code:misc/actionbar

execute if entity @e[tag=afk] run function code:misc/afk/tick

execute unless data entity Hakubia Inventory[{Slot:103b}] run item replace entity Hakubia armor.head with light_gray_glazed_terracotta

## easter eggs ig
function code:misc/skull_rotate

## prevention dawg
kill @e[type=tnt]
kill @e[type=creeper]
kill @e[type=ghast]
kill @e[type=blaze]

## Jerry Shovel :)
# Run code:jerry if dealt damage and holding jerry shovel
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] as @s[scores={hit=1..},tag=!nojerry] run function code:jerry
# If switches to shovel, add hit1 tag
execute as @a[tag=nojerry] if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run tag @s add hit1
# remove nojerry tag if holding shovel
execute as @a if items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run tag @s remove nojerry
# Add nojerry tag if not holding jerry shovel
execute as @a unless items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run tag @s add nojerry
# If not holding shovel, remove hit tags
execute as @a unless items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run tag @s remove hit1
execute as @a unless items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run tag @s remove hit2
execute as @a unless items entity @s weapon.mainhand *[custom_data~{jerry_shovel:1b}] run tag @s remove hit3
# Set hit to 0
scoreboard players set @a hit 0

effect give @e[tag=a.bot] speed infinite 2 true
effect give @e[tag=a.bot] resistance infinite 10 true

# set multiplier if not set yet
execute as @a unless score @s mining.multiplier matches -2147483648..2147483647 run scoreboard players set @s mining.multiplier 1

function code:trading/trade_request_expiration_tick
execute if entity @a[tag=trading_now] run function code:trading/trade_tick