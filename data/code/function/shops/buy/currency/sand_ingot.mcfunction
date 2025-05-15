execute store result score $sand_amount tmp run clear @s *[custom_data~{sand_frag:1b}] 0
execute unless score $sand_amount tmp matches 64.. run return run tellraw @s {"text": "You do not have enough sand for that", "color": "red"}

clear @s *[custom_data~{sand_frag:1b}] 64

give @s gold_ingot[custom_name='{"color":"yellow","italic":false,"text":"ꜱᴀɴᴅ ɪɴɢᴏᴛ"}',lore=['{"color":"gray","italic":false,"text":"The same as 64 Sand Fragments, but ... better"}'],hide_additional_tooltip={},custom_data={sand_ingot:1b}] 1