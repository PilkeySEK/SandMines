setblock 0 -64 0 barrel{Lock:"jkqsdfqsdfjjklqsdf"} replace
item replace block 0 -64 0 container.0 from entity @s player.cursor
data modify storage sandmines:macros refund.id set from block 0 -64 0 Items[0].components."minecraft:custom_data".shopid
data modify storage sandmines:macros refund.slot set from block 0 -64 0 Items[0].components."minecraft:custom_data".slot
item replace block 0 -64 0 container.0 with air
