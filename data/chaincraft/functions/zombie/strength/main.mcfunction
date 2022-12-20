# Kill spawner
execute as @s[tag=!strength] run function chaincraft:zombie/strength/spawn

# Initialize
execute as @s[tag=init] run function chaincraft:zombie/strength/init

execute if score run_second timer matches 1.. run function chaincraft:zombie/strength/track_player