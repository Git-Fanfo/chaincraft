advancement revoke @s only chaincraft:hit_weak_point

# Add one hit to the zombie devil
scoreboard players add hit zombie_devil 1

execute as @e[tag=zombie_devil,sort=nearest,limit=1] at @s run function chaincraft:zombie/devil/sound/hurt

# Give points based on the hit
#execute if score hit zombie_devil matches 1 run say @s made a hit! Added 500 points!
execute if score hit zombie_devil matches 1 run scoreboard players add @s score 30000
#execute if score hit zombie_devil matches 2 run say @s made the second hit! Added 1000 points!
execute if score hit zombie_devil matches 2 run scoreboard players add @s score 50000
#execute if score hit zombie_devil matches 3 run say @s made the final hit! Added 10000 points!
execute if score hit zombie_devil matches 3 run scoreboard players add @s score 100000