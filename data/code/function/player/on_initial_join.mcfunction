scoreboard players set @s stats.joinCount 1

scoreboard players set @s egui.currentMenu 0
function egui:render/render

tellraw @a [{"text": "Welcome, ", "color": "yellow"}, {"selector": "@s", "color": "#aaaa44"}, {"text": "!", "color": "yellow"}]

team join player @s[team=]

execute store result score $clear tmp run clear @s *[custom_data~{frag_shovel:1b}]
execute if score $clear tmp matches 0 run give @s wooden_shovel[can_break={predicates:[{blocks:"sand"}],show_in_tooltip:false},custom_name='{"color":"yellow","italic":false,"text":"ꜰʀᴀɢᴍᴇɴᴛ ꜱʜᴏᴠᴇʟ"}',unbreakable={show_in_tooltip:false},custom_model_data=1,attribute_modifiers={modifiers:[{type:"player.block_break_speed",name:"player.block_break_speed",amount:-0.5,operation:"add_value",id:"-46917194-142392940-20392991242096905750"}],show_in_tooltip:false},hide_additional_tooltip={}] 1

spawnpoint @s -87 64 0 -90

execute unless score @s stats.rebirths matches -2147483648..2147483647 run scoreboard players set @s stats.rebirths 0