# Kill spawner
execute as @s[tag=!bloody] run function chaincraft:zombie/bloody/spawn

# Initialize
execute as @s[tag=init] run function chaincraft:zombie/bloody/init

execute unless block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true