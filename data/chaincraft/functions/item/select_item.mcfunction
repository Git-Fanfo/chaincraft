execute if score epicfights config matches 1 as @s[nbt={Item:{id:"epicfight:skillbook"}}] run kill

execute as @s[nbt={Item:{id:"minecraft:white_bed"}}] run function chaincraft:zombie/crowd/summon_corpse/1
execute as @s[nbt={Item:{id:"minecraft:orange_bed"}}] run function chaincraft:zombie/crowd/summon_corpse/2
execute as @s[nbt={Item:{id:"minecraft:magenta_bed"}}] run function chaincraft:zombie/crowd/summon_corpse/3
execute as @s[nbt={Item:{id:"minecraft:light_blue_bed"}}] run function chaincraft:zombie/bloody/summon_corpse/1
execute as @s[nbt={Item:{id:"minecraft:yellow_bed"}}] run function chaincraft:zombie/bloody/summon_corpse/2
execute as @s[nbt={Item:{id:"minecraft:lime_bed"}}] run function chaincraft:zombie/jump/summon_corpse/1
execute as @s[nbt={Item:{id:"minecraft:pink_bed"}}] run function chaincraft:zombie/jump/summon_corpse/2
execute as @s[nbt={Item:{id:"minecraft:gray_bed"}}] run function chaincraft:zombie/jump/summon_corpse/3
execute as @s[nbt={Item:{id:"minecraft:light_gray_bed"}}] run function chaincraft:zombie/crowd/summon_corpse/4
execute as @s[nbt={Item:{id:"minecraft:cyan_bed"}}] run function chaincraft:zombie/crowd/summon_corpse/5
execute as @s[nbt={Item:{id:"minecraft:purple_bed"}}] run function chaincraft:zombie/strength/summon_corpse

execute if predicate chaincraft:has_tag/item/chainsaw run function chaincraft:item/chainsaw