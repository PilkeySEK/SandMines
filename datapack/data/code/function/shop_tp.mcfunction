tp @e[type=acacia_chest_boat,tag=shop0, tag=upper] -97 65.56 -1 0 0
tp @e[type=acacia_chest_boat,tag=shop0, tag=lower] -97 65 -1 0 0

tp @e[type=acacia_chest_boat,tag=shop1, tag=upper] -97 65.56 1 0 0
tp @e[type=acacia_chest_boat,tag=shop1, tag=lower] -97 65 1 0 0

tp @e[type=acacia_chest_boat,tag=shop2,tag=lower] -6.5 65 -73.5 0 0
tp @e[type=acacia_chest_boat,tag=shop2,tag=upper] -6.5 65.56 -73.5 0 0

tp @e[type=acacia_chest_boat,tag=shop3,tag=lower] -0.5 65 -47.5 0 0
tp @e[type=acacia_chest_boat,tag=shop3,tag=upper] -0.5 65.56 -47.5 0 0

tp @e[type=acacia_chest_boat,tag=shop4,tag=lower] -3 59 -71 0 0
tp @e[type=acacia_chest_boat,tag=shop4,tag=upper] -3 59.56 -71 0 0

tp @e[type=acacia_chest_boat,tag=shop5,tag=lower] -0.5 89 -85.5 0 0
tp @e[type=acacia_chest_boat,tag=shop5,tag=upper] -0.5 89.56 -85.5 0 0

tp @e[type=acacia_chest_boat,tag=shop6,tag=lower] 59.5 65 68.5 0 0
tp @e[type=acacia_chest_boat,tag=shop6,tag=upper] 59.5 65.56 68.5 0 0

tp @e[type=acacia_chest_boat,tag=shop7,tag=upper] 17.5 65.56 64.5 0 0
tp @e[type=acacia_chest_boat,tag=shop7,tag=lower] 17.5 65 64.5 0 0

execute as @e[type=acacia_chest_boat,tag=shop_marker] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

schedule function code:shop_tp 1s replace