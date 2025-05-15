## # random aah chance lol
## execute store result score $random tmp run random value 0..1
## execute if score $random tmp matches 0 run return 0

execute store result score $random tmp run random value 0..7

# execute if score $random tmp matches 0 positioned ~1 ~ ~ if block ~ ~ ~ sand run setblock ~ ~ ~ air destroy
# execute if score $random tmp matches 0 positioned ~1 ~ ~ if block ~ ~ ~ sand as @e[type=item,nbt={Item:{id:"minecraft:sand"}}, limit=1, sort=nearest,distance=..1] run function code:mining/sand/replace

execute if score $random tmp matches 0 positioned ~1 ~ ~ if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 1 positioned ~-1 ~ ~ if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 2 positioned ~ ~ ~1 if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 3 positioned ~ ~ ~-1 if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 4 positioned ~1 ~ ~1 if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 5 positioned ~-1 ~ ~-1 if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 6 positioned ~1 ~ ~-1 if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy
execute if score $random tmp matches 7 positioned ~-1 ~ ~1 if block ~ ~ ~ sand run function code:mining/sand/mining_spread/level_1/thingy