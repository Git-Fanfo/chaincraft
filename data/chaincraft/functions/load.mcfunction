say hi! Blue!
say Hello
say TODO: spawn first corpse and after some time set model

gamerule mobGriefing false
gamerule fallDamage false

# Initial config
scoreboard objectives add config dummy
execute unless score epicfights config matches 0.. run scoreboard players set epicfights config 0

scoreboard objectives add using_carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add kills totalKillCount
scoreboard objectives add stored_kills dummy
scoreboard objectives add foodLevel dummy

# Devils
scoreboard objectives add chainsaw dummy
scoreboard objectives add power dummy
scoreboard players set big power 30
scoreboard players set strength_1 power 10
scoreboard players set strength_2 power 40
scoreboard players set max_blood power 50

scoreboard objectives add timer dummy
scoreboard objectives add combo totalKillCount
scoreboard objectives add score dummy
scoreboard objectives add combo_cooldown dummy
scoreboard objectives add health health
scoreboard objectives add stored_health dummy
scoreboard objectives add combo_calc dummy
scoreboard players set constant.100 combo_calc 100

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