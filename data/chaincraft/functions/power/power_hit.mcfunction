advancement revoke @s only chaincraft:power_hit

#execute anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {damage:8d,Tags:["not_mov","sythe"],SoundEvent:"entity.generic.explode"}
#execute anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {damage:8d,Tags:["not_mov","sweep"]}
execute if score epicfights config matches 0 if predicate chaincraft:has_tag/scythe run function chaincraft:power/sweep/summon_dmg

execute if predicate chaincraft:has_tag/scythe run function chaincraft:controller/spread_blood

execute as @e[type=arrow, sort=nearest, limit=4, tag=sweep, tag=not_mov] run data modify entity @s Owner set from entity @p UUID