###fixed coords###
summon zombie 58.0 4 -84.5
summon zombie 59.0 4 -84.5
summon zombie 60.0 4 -84.5
summon zombie 61.0 4 -84.5
summon zombie 62.0 4 -84.5
summon zombie 60.0 4 -83.5
summon zombie 61.0 4 -83.5
summon zombie 62.0 4 -83.5
summon zombie 58.0 4 -82.5
summon zombie 61.0 4 -82.5
summon zombie 58.0 4 -81.5
summon zombie 60.0 4 -81.5
summon zombie 62.0 4 -81.5
summon zombie 59.0 4 -80.5
summon zombie 60.0 4 -80.5
summon zombie 61.0 4 -80.5
summon zombie 62.0 4 -80.5

execute positioned 60.0 6.7 -82.5 run function chaincraft:zombie/devil/spawn

scoreboard players set gamestate config 2
scoreboard players set gametime timer 12000
scoreboard players set timer_minutes config 10
scoreboard players set timer_seconds config 0

spawnpoint @a[tag=intro_chain] 61 5 -107 0
spawnpoint @a[tag=intro_power] 59 17 -50 180

bossbar set minecraft:timer players @a

scoreboard objectives setdisplay sidebar score