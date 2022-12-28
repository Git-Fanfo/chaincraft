# Invis slime, it doesn't have texture
summon slime ~ ~1 ~ {NoAI:1b,Health:1000f,Size:3,Tags:["weak_point"],ActiveEffects:[{Id:11,Amplifier:255b,Duration:2147483647 ,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}

#tellraw @a "wait im so vulnerable, you can hit me now"
playsound minecraft:entity.enderman.death hostile @a ~ ~ ~ 3 .7
playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 3 .1
scoreboard players set charge zombie_devil 0

# Time while being vulnerable
scoreboard players set vul_time zombie_devil 200
tag @s add vulnerable