scoreboard players reset @s afk
summon interaction ~ ~ ~ {Tags:[afk]}
tag @s add afk
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 oak_sign[rotation=8]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 oak_sign[rotation=0]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ oak_sign[rotation=12]
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ oak_sign[rotation=4]
execute if block ~1 ~ ~1 air run setblock ~1 ~ ~1 oak_sign[rotation=14]
execute if block ~-1 ~ ~-1 air run setblock ~-1 ~ ~-1 oak_sign[rotation=6]
execute if block ~-1 ~ ~1 air run setblock ~-1 ~ ~1 oak_sign[rotation=2]
execute if block ~1 ~ ~-1 air run setblock ~1 ~ ~-1 oak_sign[rotation=10]
data modify block ~1 ~ ~1 front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~ ~ ~1 front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~1 ~ ~ front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~-1 ~ ~ front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~-1 ~ ~-1 front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~ ~ ~-1 front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~1 ~ ~-1 front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}
data modify block ~-1 ~ ~1 front_text set value {has_glowing_text:1b, color: "red", messages: ['""', '"afk"', '""', '""']}