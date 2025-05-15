gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule announceAdvancements false
gamerule doMobLoot false
gamerule fallDamage false

forceload add 0 0

function code:shop_tp

scoreboard objectives add block_replace dummy
scoreboard objectives add stats.mined_sand minecraft.mined:sand
scoreboard objectives add detection.mined_sand minecraft.mined:sand
scoreboard objectives add stats.kills minecraft.custom:minecraft.player_kills
scoreboard objectives add tmp dummy
scoreboard objectives add currency.sand dummy {"text": "sand", "color": "yellow", "bold": true}
scoreboard objectives add stats.joinCount dummy
scoreboard objectives add detection.join minecraft.custom:minecraft.leave_game
scoreboard objectives add constant dummy
scoreboard objectives add shop.data dummy
scoreboard objectives add stats.xp dummy
scoreboard objectives add stats.level dummy
scoreboard objectives add actionbar.immunitytime dummy
scoreboard objectives add stats.playtime dummy
scoreboard objectives add jerry dummy
scoreboard objectives add hit minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stats.rebirths dummy
scoreboard objectives add mining.multiplier dummy
scoreboard objectives add stats.illusionerDeaths minecraft.killed_by:minecraft.illusioner
scoreboard objectives add trade_request_expiration dummy
scoreboard objectives add player.item_use_cooldown dummy

# triggers
scoreboard objectives add spawn trigger
scoreboard objectives add kickall trigger
scoreboard objectives add afk trigger
scoreboard objectives add discord trigger
scoreboard objectives add pay_into_bank trigger
scoreboard objectives add terracotta_lock trigger
scoreboard objectives add request_from_bank trigger
scoreboard objectives add stats trigger
scoreboard objectives add Rules trigger
scoreboard objectives add trade trigger
scoreboard objectives add confirm_trade trigger
scoreboard objectives add cancel_trade trigger
scoreboard objectives add sell_treasure trigger
scoreboard objectives add cosmetics trigger
# party hat!
scoreboard objectives add hat trigger

scoreboard players set -1 constant -1
scoreboard players set 1 constant 1
scoreboard players set 64 constant 64
scoreboard players set 60 constant 60
scoreboard players set 20 constant 20
scoreboard players set 500 constant 500
scoreboard players set 5000 constant 5000

#scoreboard objectives add mining_speed dummy
#scoreboard objectives add mining_speed.cost dummy
#scoreboard objectives add reach_dist dummy
#scoreboard objectives add reach_dist.cost dummy
#scoreboard players set $2 mining_speed.cost 2
#scoreboard players set $3 mining_speed.cost 3

scoreboard objectives add upgrades dummy

# ᴏᴡɴᴇʀ ᴅᴇᴠ 
team add owner {"text": "owner", "color": "aqua"}
team add dev {"text": "dev", "color": "dark_aqua"}
team add admin {"text": "admin", "color": "dark_red"}
team add player {"text":"player", "color":"gray"}
team modify owner prefix {"text": "ᴏᴡɴᴇʀ ", "color": "aqua"}
team modify owner color white
team modify dev prefix {"text": "ᴅᴇᴠ ", "color": "dark_aqua"}
team modify dev color white
team modify admin prefix {"text": "ᴀᴅᴍɪɴ ", "color": "dark_red"}
team modify admin color white
team modify player prefix {"text": "ᴘʟᴀʏᴇʀ ", "color": "gray"}
team modify player color white

setworldspawn -87 64 0 -90

# Hitboxes
tp @e[tag=a.hitbox] 0 0 0
kill @e[tag=a.hitbox]
summon armor_stand -104.5 98.0 6.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -103.5 98.0 6.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.5 98.0 6.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.0 98.0 7.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.0 98.0 8.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.0 98.0 9.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.0 98.0 10.0 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.0 98.0 10.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -105.2 97.324 6.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -104.2 97.324 6.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -103.2 97.324 6.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.5 97.324 7.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.5 97.324 8.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.5 97.324 9.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
summon armor_stand -102.5 97.324 10.5 {Invisible:1b,Tags:["a.hitbox"],Passengers:[{id:shulker,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["a.hitbox"]}]}
effect give @e[tag=a.hitbox] invisibility infinite 0 true

## IMPORTANT (maybe)
function code:kill_and_summon_on_reload

tellraw @a ["",{"text":"[","color":"aqua"},{"text":"SandMines","color":"yellow"},{"text":"]","color":"aqua"},{"text":" Reloaded."}]