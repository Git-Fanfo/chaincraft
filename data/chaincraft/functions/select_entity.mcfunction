execute if predicate chaincraft:is_hurt run particle block redstone_block ~ ~1 ~ 0 0 0 1 80 force
execute if predicate chaincraft:is_hurt run setblock ~ ~ ~ redstone_wire

## Selectors
execute as @s[type=player] run function chaincraft:player/main