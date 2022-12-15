execute as @s[type=zombie] run function chaincraft:zombie/crowd/init
execute as @s[type=husk] run function chaincraft:zombie/bloody/init
execute as @s[type=drowned] run function chaincraft:zombie/jump/init
execute as @s[type=iron_golem] run function chaincraft:zombie/strength/init

execute as @s[type=!iron_golem] run function chaincraft:zombie/give_weapon

team join motion