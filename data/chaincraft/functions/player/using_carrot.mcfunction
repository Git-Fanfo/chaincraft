scoreboard players set @s using_carrot 0

# Give strenght
execute as @s[tag=!cord] if predicate chaincraft:has_string run function chaincraft:chainsaw/ability/string

execute if predicate chaincraft:has_tag/hammer run function chaincraft:power/release/main