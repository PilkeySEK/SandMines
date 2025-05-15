kill @e[type=acacia_chest_boat, tag=shop_marker]
# -93 should be about the location ig ;-;
summon acacia_chest_boat -93 65 0 {Tags:["shop_marker","shop0","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -93 65 0 {Tags:["shop_marker","shop0","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -93 65 0 {Tags:["shop_marker","shop1","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -93 65 0 {Tags:["shop_marker","shop1","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -6 64 -73 {Tags:["shop_marker","shop2","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -6 64 -73 {Tags:["shop_marker","shop2","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 0 64 -48 {Tags:["shop_marker","shop3","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 0 64 -48 {Tags:["shop_marker","shop3","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -3 58 -70 {Tags:["shop_marker","shop4","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat -3 58 -70 {Tags:["shop_marker","shop4","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 0 89 -84 {Tags:["shop_marker","shop5","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 0 89 -84 {Tags:["shop_marker","shop5","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 59 64 68 {Tags:["shop_marker","shop6","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 59 64 68 {Tags:["shop_marker","shop6","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 17.5 65 64.5 {Tags:["shop_marker","shop7","upper"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}
summon acacia_chest_boat 17.5 65 64.5 {Tags:["shop_marker","shop7","lower"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"color":"blue","text":"Shop"}',Passengers:[{id:"minecraft:marker"}]}

# yes
function code:shops/refill/refill_start

kill @e[type=item]

kill @e[type=villager,tag=shop_villager]
summon villager -96.5 64 1.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[-90.0f,0.0f]}
summon villager -96.5 64 -0.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[-90.0f,0.0f]}
summon villager -0.5 88 -85.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[0.0f,0.0f]}
summon villager -6.5 64 -74.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[0.0f,0.0f]}
summon villager -0.5 64 -47.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[135.0f,0.0f]}
summon villager 59.5 64 68.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[135.0f,0.0f]}
summon villager 17.5 64 64.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["shop_villager"],Rotation:[180.0f,0.0f]}