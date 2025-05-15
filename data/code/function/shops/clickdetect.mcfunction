#shovels
#fragment shovel
execute store result score $clear shop.data run clear @s *[custom_data~{buy_frag_shovel:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/shovels/frag_shovel
#sand shovel
execute store result score $clear shop.data run clear @s *[custom_data~{buy_sand_shovel:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/shovels/sand_shovel
#glass shovel
execute store result score $clear shop.data run clear @s *[custom_data~{buy_glass_shovel:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/shovels/glass_shovel
#tempered glass shovel
execute store result score $clear shop.data run clear @s *[custom_data~{buy_tempered_glass_shovel:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/shovels/tempered_glass_shovel
#compressed sand shovel
execute store result score $clear shop.data run clear @s *[custom_data~{buy_compressed_sand_shovel:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/shovels/compressed_sand_shovel

#currency
#sand ingot
execute store result score $clear shop.data run clear @s *[custom_data~{buy_sand_ingot:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/currency/sand_ingot
#unlock bank
execute store result score $clear shop.data run clear @s *[custom_data~{unlock_bank:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/currency/unlock_bank
#sand frags from ingot
execute store result score $clear shop.data run clear @s *[custom_data~{buy_sand_frags_from_ingot:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/currency/sand_frags_from_ingot

#swords/blades
#fragment blade
execute store result score $clear shop.data run clear @s *[custom_data~{buy_fragment_sword:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/swords/fragment_sword
#sand blade
execute store result score $clear shop.data run clear @s *[custom_data~{buy_sand_sword:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/swords/sand_sword
#glass blade
execute store result score $clear shop.data run clear @s *[custom_data~{buy_glass_sword:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/swords/glass_sword
#tempered glass blade
execute store result score $clear shop.data run clear @s *[custom_data~{buy_tempered_glass_sword:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/swords/tempered_glass_sword

# drugdealer's powerups
# mining speed
execute store result score $clear shop.data run clear @s *[custom_data~{upgrade_breaking_speed:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/upgrades/mining_speed
# mining speed
execute store result score $clear shop.data run clear @s *[custom_data~{upgrade_block_reach:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/upgrades/reach

#albertos magic idk
execute store result score $clear shop.data run clear @s *[custom_data~{get_rebirth:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/misc/get_rebirth
execute store result score $clear shop.data run clear @s *[custom_data~{unlock_trading:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/misc/unlock_trading

#armor
#speedy pants
execute store result score $clear shop.data run clear @s *[custom_data~{buy_speedy_pants:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/armor/speedy_pants

#cosmetics
execute store result score $clear shop.data run clear @s *[custom_data~{buy_gold_trail:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/cosmetics/gold_trail

execute store result score $clear shop.data run clear @s *[custom_data~{buy_ground_confetti:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/cosmetics/ground_confetti

execute store result score $clear shop.data run clear @s *[custom_data~{buy_magical_plate:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/cosmetics/magical_plate

#fishing shop
execute store result score $clear shop.data run clear @s *[custom_data~{buy_fishing_rod:1b}] 0
execute if score $clear shop.data matches 1.. run function code:shops/buy/fishing/fishing_rod

#put this at the end pls
execute store result score $clear shop.data as @e[type=item] if data entity @s Item.components."minecraft:custom_data".clear run kill @s
execute if score $clear shop.data matches 1.. run function code:shops/refill/refill_start
execute store result score $clear shop.data run clear @s *[custom_data~{clear:1b}]
execute if score $clear shop.data matches 1.. run function code:shops/refill/refill_start

tag @s remove scoreboard_buy