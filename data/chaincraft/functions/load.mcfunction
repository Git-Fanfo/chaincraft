tellraw @a {"text": "Chainsaw Craft","color": "gold"}

gamerule mobGriefing false
gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule showDeathMessages false
# Initial config
scoreboard objectives add config dummy
execute unless score epicfights config matches 0.. run scoreboard players set epicfights config 0
execute unless score hardcore config matches 0.. run scoreboard players set hardcore config 0
execute unless score skip config matches 0.. run scoreboard players set skip config 0
execute unless score light config matches 0.. run scoreboard players set light config 1

scoreboard objectives add using_carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add kills totalKillCount
scoreboard objectives add zombie_kills minecraft.killed:minecraft.zombie
scoreboard objectives add drowned_kills minecraft.killed:minecraft.drowned
scoreboard objectives add husk_kills minecraft.killed:minecraft.husk
scoreboard objectives add golem_kills minecraft.killed:minecraft.iron_golem
scoreboard objectives add foodLevel dummy
scoreboard objectives add push dummy

# Devils
scoreboard objectives add chainsaw dummy
scoreboard objectives add power dummy
scoreboard players set strength_1 power 10
scoreboard players set big power 30
scoreboard players set strength_2 power 70
scoreboard players set max_blood power 100

scoreboard objectives add dead deathCount
scoreboard objectives add deathCount deathCount
scoreboard objectives add music dummy
scoreboard objectives add timer dummy
scoreboard objectives add combo totalKillCount
scoreboard objectives add max_combo dummy
scoreboard objectives add pb dummy "Personal Bests"
execute unless score BlueBrawl10 pb matches 1011800.. run scoreboard players set BlueBrawl10 pb 1011800
execute unless score FanfoYT pb matches 242700.. run scoreboard players set FanfoYT pb 242700
execute unless score zabatZabat pb matches 337800.. run scoreboard players set zabatZabat pb 337800
execute unless score DarkYeagerMC pb matches 35100.. run scoreboard players set DarkYeagerMC pb 35100
scoreboard objectives add score dummy "Score"
scoreboard objectives add combo_cooldown dummy
scoreboard objectives add health health
scoreboard objectives add stored_health dummy
scoreboard objectives add combo_calc dummy
scoreboard players set constant.100 combo_calc 100
scoreboard players set constant.200 combo_calc 200
scoreboard players set constant.300 combo_calc 300
scoreboard players set constant.500 combo_calc 500
bossbar add timer {"translate":"console.feedback.5"}
bossbar set minecraft:timer max 12000
bossbar set minecraft:timer color purple

## Zombies
# Despawn corpse
scoreboard objectives add despawn dummy

# Jumper
scoreboard objectives add jumper dummy

# Zombie Devil
scoreboard objectives add zombie_devil dummy

# Pos0 and Pos1 for give motion to entities
scoreboard objectives add motion_x0 dummy
scoreboard objectives add motion_y0 dummy
scoreboard objectives add motion_z0 dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

team add zombie
team modify zombie collisionRule always
team add devil
team modify devil friendlyFire false
team modify devil seeFriendlyInvisibles false
team modify devil color dark_red