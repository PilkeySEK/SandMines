# @p = the player that mined the block of sand (most likely)
# @s = the item that dropped while doing so

tag @p add tmptag

# TODO make multipliers for sand and stuff
execute if entity @p[tag=scoreboard,tag=tmptag] run scoreboard players add @p[tag=tmptag] currency.sand 1
execute if entity @p[tag=!scoreboard, tag=tmptag] run give @p[tag=tmptag] yellow_dye[custom_name='{"color":"yellow","italic":false,"text":"Sand Fragment"}',custom_data={sand_frag:1b},hide_additional_tooltip={}] 1

scoreboard players add @p[tag=tmptag] stats.xp 1
execute if score @p[tag=tmptag] stats.xp matches 64.. run scoreboard players add @p[tag=tmptag] stats.level 1
execute if score @p[tag=tmptag] stats.xp matches 64.. run title @p[tag=tmptag] actionbar {"text": "+1 level", "color": "dark_green"}
execute if score @p[tag=tmptag] stats.xp matches 64.. run scoreboard players set @p[tag=tmptag] actionbar.immunitytime 15
execute if score @p[tag=tmptag] stats.xp matches 64.. run scoreboard players set @p[tag=tmptag] stats.xp 0
#say mined smth

tag @p[tag=tmptag] remove tmptag