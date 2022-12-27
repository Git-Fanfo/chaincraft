advancement revoke @s only chaincraft:hit_weak_point

# Add one hit to the zombie devil
scoreboard players add hit zombie_devil 1

# Give points based on the hit
execute if score hit zombie_devil matches 1 run say @s made a hit! Added 500 points!
execute if score hit zombie_devil matches 1 run scoreboard players add @s score 500
execute if score hit zombie_devil matches 2 run say @s made the second hit! Added 1000 points!
execute if score hit zombie_devil matches 2 run scoreboard players add @s score 1000
execute if score hit zombie_devil matches 3 run say @s made the final hit! Added 10000 points!
execute if score hit zombie_devil matches 3 run scoreboard players add @s score 10000