execute if predicate chaincraft:is_hurt run function chaincraft:controller/spread_blood

## Selectors
execute as @s[type=player] run function chaincraft:player/main
execute as @s[type=item] run function chaincraft:item/select_item
execute as @s[tag=corpse] run function chaincraft:zombie/corpse

## zombies
execute as @s[type=zombie] run function chaincraft:zombie/crowd/main
execute as @s[type=husk] run function chaincraft:zombie/bloody/main
execute as @s[type=drowned] run function chaincraft:zombie/jump/main
execute as @s[type=iron_golem] run function chaincraft:zombie/strength/main