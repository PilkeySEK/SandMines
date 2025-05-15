# being executed as @a every tick lol

execute unless score @s detection.join matches -2147483648..2147483647 run function code:player/on_initial_join
execute unless score @s detection.join matches -2147483648..2147483647 run scoreboard players set @s detection.join 0
execute if score @s detection.join matches 1.. run function code:player/on_join
execute if score @s detection.join matches 1.. run scoreboard players set @s detection.join 0

clear @s[tag=!noClear] *[custom_data~{clear:1b}]

# effect give @s saturation 1 255 true

# from 102 111 102 to -112 62 -101
## commanted out due to isues and stuff and hak's build idk me when
# execute if entity @s[tag=!is_admin,tag=!is_dev,tag=!noflyhax] positioned -112.0 63.7 -101.0 unless entity @s[dx=214,dy=1000.3,dz=203] run tag @s add flyhax
# execute if entity @s[tag=flyhax] run tellraw @s "you aint getting out ur trapped here"
# execute if entity @s[tag=flyhax] run tp @s -86 64 0 -90 0
# execute if entity @s[tag=flyhax] run tellraw @a[tag=is_admin] [{"selector": "@s", "color": "red"}, {"text": " is prob using fly hax", "color": "red"}]
# execute if entity @s[tag=flyhax] run tellraw @a[tag=!is_admin,tag=is_dev] [{"selector": "@s", "color": "red"}, {"text": " is prob using fly hax", "color": "red"}]
# execute if entity @s[tag=flyhax] run tag @s remove flyhax

function code:player/triggers
function code:player/cosmetics

execute if items entity @s armor.legs *[custom_data~{speedy_pants:1b}] run effect give @s speed 1 0 true


## important: patch instamine shovel (give everyone that has it in hand mining fatigue)
execute unless entity @s[tag=instamine_in_hand] if items entity @s weapon.* *[attribute_modifiers~{modifiers:{contains:[{type:"minecraft:player.block_break_speed",amount:1.0d,operation:"add_value"}]}}] run tag @s add add.instamine_in_hand
execute if entity @s[tag=add.instamine_in_hand] run tellraw @s {"text": "This item is disabled. You can sell it to someone else if you want though (selling is wip rn)", "color": "red"}
execute if entity @s[tag=add.instamine_in_hand] run tag @s add instamine_in_hand
execute if entity @s[tag=add.instamine_in_hand] run tag @s remove add.instamine_in_hand
execute if entity @s[tag=instamine_in_hand] run effect give @s mining_fatigue 1 100 true
execute if entity @s[tag=instamine_in_hand] unless items entity @s weapon.* *[attribute_modifiers~{modifiers:{contains:[{type:"minecraft:player.block_break_speed",amount:1.0d,operation:"add_value"}]}}] run tag @s remove instamine_in_hand

scoreboard players add @s player.item_use_cooldown 0
execute if score @s player.item_use_cooldown matches 1.. run scoreboard players remove @s player.item_use_cooldown 1