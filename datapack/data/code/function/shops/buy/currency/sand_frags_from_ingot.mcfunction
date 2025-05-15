execute store result score $sand_amount tmp run clear @s *[custom_data~{sand_ingot:1b}] 0
execute unless score $sand_amount tmp matches 1.. run return run tellraw @s {"text": "You need to have a sand ingot", "color": "red"}

clear @s *[custom_data~{sand_ingot:1b}] 1

# give @s gold_ingot[custom_name='{"color":"yellow","italic":false,"text":"ꜱᴀɴᴅ ɪɴɢᴏᴛ"}',lore=['{"color":"gray","italic":false,"text":"The same as 64 Sand Fragments, but ... better"}'],hide_additional_tooltip={},custom_data={sand_ingot:1b}] 1
give @s yellow_dye[custom_name='{"color":"yellow","italic":false,"text":"Sand Fragment"}',custom_data={sand_frag:1b},hide_additional_tooltip={}] 64