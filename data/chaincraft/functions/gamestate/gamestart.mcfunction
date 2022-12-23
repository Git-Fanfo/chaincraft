###coords###
summon zombie 73 4 -90
summon zombie 73 4 -91
summon zombie 73 4 -92
summon zombie 73 4 -93
summon zombie 73 4 -94
summon zombie 72 4 -90
summon zombie 72 4 -91
summon zombie 72 4 -92
summon zombie 72 4 -93
summon zombie 72 4 -94
summon zombie 71 4 -90
summon zombie 71 4 -91
summon zombie 71 4 -92
summon zombie 71 4 -93
summon zombie 71 4 -94
summon zombie 70 4 -90
summon zombie 70 4 -91
summon zombie 70 4 -92
summon zombie 70 4 -93
summon zombie 70 4 -94
summon zombie 69 4 -90
summon zombie 69 4 -91
summon zombie 69 4 -92
summon zombie 69 4 -93
summon zombie 69 4 -94

execute positioned 69 6.5 -93 run function chaincraft:zombie/devil/spawn

scoreboard players set gamestate config 2
scoreboard players set timer config 12000
scoreboard players set timer_minutes config 10
scoreboard players set timer_seconds config 0

tp @a[tag=chainsaw] 71.5 4 -65 180 0
tp @a[tag=power] 75 4 -59 135 0

bossbar set minecraft:timer players @a