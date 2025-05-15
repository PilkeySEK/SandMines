scoreboard players operation $pt_seconds tmp = @s stats.playtime
scoreboard players operation $pt_seconds tmp /= 20 constant
scoreboard players operation $pt_minutes tmp = $pt_seconds tmp
scoreboard players operation $pt_seconds tmp %= 60 constant
scoreboard players operation $pt_minutes tmp /= 60 constant
scoreboard players operation $pt_hours tmp = $pt_minutes tmp
scoreboard players operation $pt_minutes tmp %= 60 constant
scoreboard players operation $pt_hours tmp /= 60 constant
scoreboard players reset $pt_secfix tmp
scoreboard players reset $pt_minfix tmp
execute if score $pt_seconds tmp matches ..9 run scoreboard players set $pt_secfix tmp 0
execute if score $pt_minutes tmp matches ..9 run scoreboard players set $pt_minfix tmp 0