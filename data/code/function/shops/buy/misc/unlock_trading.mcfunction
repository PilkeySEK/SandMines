execute unless score @s stats.rebirths matches 2.. run return run tellraw @s {"text": "You do not have enough rebirths for that", "color": "red"}

scoreboard players remove @s stats.rebirths 2
scoreboard players remove @s mining.multiplier 2

tag @s add tradingEnabled

tellraw @s {"text": "You can now trade!","color": "green"}
give @s gold_nugget[item_name='{"color":"yellow","text":"ᴛʀᴀᴅᴇ!"}',lore=['{"color":"gray","italic":false,"text":"Right Click while looking"}','{"color":"gray","italic":false,"text":"at a player to trade with them"}'],custom_data={trade_request_item:true},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:100000}] 1