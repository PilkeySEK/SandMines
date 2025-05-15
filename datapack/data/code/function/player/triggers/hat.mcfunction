scoreboard players set @s hat 0

execute if data entity @s Inventory[{Slot:103b}] unless items entity @s armor.head damaged_anvil run return run tellraw @s {"text": "you cannot have a helmet on", "color": "red"}

execute unless data entity @s Inventory[{Slot:103b}] run tellraw @s {"text": "You now have a party hat on", "color": "green"}
execute if items entity @s armor.head damaged_anvil run tellraw @s {"text": "You now no longer have a party hat on", "color": "green"}

execute unless data entity @s Inventory[{Slot:103b}] run return run item replace entity @s armor.head with minecraft:damaged_anvil[enchantments={levels:{binding_curse:1},show_in_tooltip:false},item_name='{"text":"Party Hat", "color":"aqua"}']
execute if items entity @s armor.head damaged_anvil run return run item replace entity @s armor.head with air