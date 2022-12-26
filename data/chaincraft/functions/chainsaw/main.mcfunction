#> chaincraft:chainsaw/main
#   Controlls all the stuff of the chainsaw man
#
# Callers:
#   > chaincraft:player/main

execute if score run_second timer matches 1.. run function chaincraft:chainsaw/effects
# Idle effects
execute if score idle chainsaw matches ..0 run scoreboard players set idle chainsaw 99
execute if score idle chainsaw matches 80 run playsound minecraft:chaincraft.chainsaw.idle record @s ~ ~ ~ 1 1
scoreboard players remove idle chainsaw 1

# Chainsaw killed something
scoreboard players operation @s stored_kills -= @s kills
## Here
execute if score @s stored_kills matches ..-1 run function chaincraft:score/trigger
scoreboard players operation @s stored_kills = @s kills

# Prevent score go below 0
execute if score @s score matches ..-1 run scoreboard players set @s score 0

# Inter-Kill combo reset
scoreboard players remove @s[scores={combo_cooldown=1..}] combo_cooldown 1
scoreboard players set @s[scores={combo=1..,combo_cooldown=0}] combo 0

## Take damage
#scoreboard players operation @s stored_health -= @s health
#execute if score @s stored_health matches 1.. run function chaincraft:score/reset
#scoreboard players operation @s stored_health = @s health

# Player dies
execute as @s[scores={dead=1..}] run function chaincraft:chainsaw/death

# Used string
execute as @s[tag=cord] run function chaincraft:chainsaw/ability/action

# Drinking blood
execute as @s[tag=!cord] if predicate chaincraft:is/sneaking unless score @s foodLevel matches 20.. run execute as @e[tag=corpse,sort=nearest,limit=1,distance=..2] run function chaincraft:chainsaw/heal

# Prevent removing armor
execute unless data entity @s[tag=chainsaw] Inventory[{Slot:103b}] run function chaincraft:chainsaw/get
execute unless data entity @s[tag=chainsaw] Inventory[{Slot:102b}] run function chaincraft:chainsaw/get
execute unless data entity @s[tag=chainsaw] Inventory[{Slot:101b}] run function chaincraft:chainsaw/get
execute unless data entity @s[tag=chainsaw] Inventory[{Slot:100b}] run function chaincraft:chainsaw/get