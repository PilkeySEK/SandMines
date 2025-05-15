execute store result score $shops shop.data if entity @e[type=chest_boat,tag=shop_marker]
execute if score $shops shop.data < $pshops shop.data run function code:shops/refill/refill_start
execute store result score $pshops shop.data if entity @e[type=chest_minecart,tag=shop_marker]

execute as @a store result score @s shop.data run clear @s *[custom_data~{clear:1b}] 0
#execute as @a if score @s shop.data matches 1.. run function code:shops/refund/refund_detect
execute as @a[tag=!noClear] run function code:shops/clickdetect