say hi! Blue!
say Hello
say TODO: spawn first corpse and after some time set model

gamerule mobGriefing false
gamerule fallDamage false
gamerule doImmediateRespawn true

# Initial config
scoreboard objectives add config dummy
execute unless score epicfights config matches 0.. run scoreboard players set epicfights config 0
execute unless score hardcore config matches 0.. run scoreboard players set hardcore config 0
execute unless score skip config matches 0.. run scoreboard players set skip config 0
execute unless score light config matches 0.. run scoreboard players set light config 1

scoreboard objectives add using_carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add kills totalKillCount
scoreboard objectives add stored_kills dummy
scoreboard objectives add foodLevel dummy
scoreboard objectives add push dummy

# Devils
scoreboard objectives add chainsaw dummy
scoreboard objectives add power dummy
scoreboard players set strength_1 power 10
scoreboard players set big power 30
scoreboard players set strength_2 power 70
scoreboard players set max_blood power 90

scoreboard objectives add dead deathCount
scoreboard objectives add music dummy
scoreboard objectives add timer dummy
scoreboard objectives add combo totalKillCount
scoreboard objectives add max_combo dummy
scoreboard objectives add pb dummy "Personal Bests"
scoreboard objectives add score dummy "Score"
scoreboard objectives add combo_cooldown dummy
scoreboard objectives add health health
scoreboard objectives add stored_health dummy
scoreboard objectives add combo_calc dummy
scoreboard players set constant.100 combo_calc 100
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