say hi! Blue!
say Hello

scoreboard objectives add using_carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add kills totalKillCount
scoreboard objectives add stored_kills dummy

scoreboard objectives add chainsaw dummy

scoreboard objectives add timer dummy
scoreboard objectives add combo totalKillCount
scoreboard objectives add score dummy
scoreboard objectives add combo_cooldown dummy
scoreboard objectives add combo_useable dummy
#combo_useable follows along with combo however is for the purpose of being reset when an ability is used.

## Zombies
# Despawn corpse
scoreboard objectives add despawn dummy

# Jumper
scoreboard objectives add jumper dummy

# Pos0 and Pos1 for give motion to entities
scoreboard objectives add motion_x0 dummy
scoreboard objectives add motion_y0 dummy
scoreboard objectives add motion_z0 dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

team add zombie
team modify zombie collisionRule always