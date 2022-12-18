summon slime ~ ~1 ~ {NoAI:1b,Health:1000f,Size:3,Tags:["weak_point"],ActiveEffects:[{Id:11,Amplifier:255b,Duration:2147483647 ,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
tellraw @a "wait im so vulnerable, you can hit me now"
scoreboard players set charge zombie_devil 0

# Time while being vulnerable
scoreboard players set vulnerable zombie_devil 200