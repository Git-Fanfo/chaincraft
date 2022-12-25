# Kill spawner
execute as @s[tag=!crowd] run function chaincraft:zombie/crowd/spawn

# Initialize
execute as @s[tag=init] run function chaincraft:zombie/crowd/init

execute unless block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true