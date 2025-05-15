scoreboard players add @s stats.joinCount 1
attribute @s generic.safe_fall_distance base set 320

scoreboard players set @s egui.currentMenu 0
function egui:render/render

tellraw @a [{"text": "Welcome back, ", "color": "yellow"}, {"selector": "@s", "color": "#aaaa44"}, {"text": "!", "color": "yellow"}]

spawnpoint @s -87 64 0 -90
scoreboard players set @s spawn 1

# so ppl can rejoin to get a shovel
execute store result score $clear tmp run clear @s *[custom_data~{frag_shovel:1b}]
execute if score $clear tmp matches 0 run give @s wooden_shovel[can_break={predicates:[{blocks:"sand"}],show_in_tooltip:false},custom_name='{"color":"yellow","italic":false,"text":"ꜰʀᴀɢᴍᴇɴᴛ ꜱʜᴏᴠᴇʟ"}',unbreakable={show_in_tooltip:false},custom_model_data=1,attribute_modifiers={modifiers:[{type:"player.block_break_speed",name:"player.block_break_speed",amount:-0.5,operation:"add_value",uuid:[I;-46917194,-142392940,-2039299124,2096905750]}],show_in_tooltip:false},hide_additional_tooltip={}] 1

execute unless score @s stats.rebirths matches -2147483648..2147483647 run scoreboard players set @s stats.rebirths 0

tag @s remove trading.trader1
tag @s remove trading.trader2
tag @s remove trading_now
tag @s remove trading_now.confirmed
tag @s remove trading_now.trader1
tag @s remove trading_now.trader2
tag @s remove tmptag

# yes (remove if err4r joined once)
execute if entity @s[name="Err4r_exe"] run gamemode adventure @s