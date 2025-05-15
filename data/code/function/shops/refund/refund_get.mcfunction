$execute if items entity @e[type=acacia_chest_boat,tag=shop$(id),limit=1,sort=nearest] container.$(slot) air run return 0
$data modify storage sandmines:macros refund.blockid set from entity @e[type=acacia_chest_boat,tag=shop$(id),limit=1,sort=nearest] Items[$(slot)].id
$data modify storage sandmines:macros refund.count set from entity @e[type=acacia_chest_boat,tag=shop$(id),limit=1,sort=nearest] Items[$(slot)].count
data modify storage sandmines:macros refund.components set value {}
$data modify storage sandmines:macros refund.components set from entity @e[type=acacia_chest_boat, tag=shop$(id),limit=1,sort=nearest] Items[$(slot)].components
function code:shops/refund/refund with storage sandmines:macros refund