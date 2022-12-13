execute if predicate chaincraft:is_hurt run particle block redstone_block ~ ~1 ~ 0 0 0 1 80 force
execute if predicate chaincraft:is_hurt run setblock ~ ~ ~ redstone_wire

## Selectors
execute as @s[type=player] run function chaincraft:player/main
execute as @s[type=item] run function chaincraft:item/select_item
execute as @s[tag=!init,type=!player,type=!item] run function chaincraft:zombie/select_type
execute as @s[tag=corpse] run function chaincraft:zombie/corpse
execute as @s[type=iron_golem] run function chaincraft:zombie/strength/main
