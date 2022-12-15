execute if predicate chaincraft:is_hurt run function chaincraft:controller/spread_blood

## Selectors
execute as @s[type=player] run function chaincraft:player/main
execute as @s[type=item] run function chaincraft:item/select_item
execute as @s[tag=corpse] run function chaincraft:zombie/corpse
execute as @s[type=iron_golem] run function chaincraft:zombie/strength/main
execute as @s[type=drowned] run function chaincraft:zombie/jump/main

## Init zombies
execute as @s[tag=!init,type=zombie] run function chaincraft:zombie/select_type
execute as @s[tag=!init,type=husk] run function chaincraft:zombie/select_type
execute as @s[tag=!init,type=drowned] run function chaincraft:zombie/select_type
execute as @s[tag=!init,type=iron_golem] run function chaincraft:zombie/select_type
