#spawn area
execute positioned -99.0 64.0 8.0 as @a[dx=10, dy=4, dz=-16] at @s run tag @s add protected
execute positioned -88.0 64.0 7.0 as @a[dx=1, dy=4, dz=-14] at @s run tag @s add protected
execute positioned -86.0 64.0 6.0 as @a[dx=0, dy=4, dz=-12] at @s run tag @s add protected
execute positioned -85.0 64.0 4.0 as @a[dx=0, dy=4, dz=-8] at @s run tag @s add protected
execute positioned 8.0 64.0 90.0 as @a[name=!Hakubia,tag=!is_admin, tag=!is_dev] at @s if block ~ ~-1 ~ minecraft:light_gray_glazed_terracotta unless score Hakubia terracotta_lock matches 2 run tp @s[dx=4,dy=3,dz=4] 5.57 64.00 88.84 308.54 8.59
execute positioned 8.0 64.0 90.0 as @a[name=Hakubia] at @s if entity @s[dx=4,dy=3,dz=4] if block ~ ~-1 ~ minecraft:light_gray_glazed_terracotta run tag @s add protected
execute positioned 8.0 64.0 90.0 as @a[name=Hakubia] at @s unless entity @s[dx=4,dy=3,dz=4] if block ~ ~-1 ~ minecraft:light_gray_glazed_terracotta run tag @s remove protected
