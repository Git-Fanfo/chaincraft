#> chaincraft:power/main
#   Controlls all the stuff of the chainsaw man
#
# Callers:
#   > chaincraft:player/main

execute if score run_second timer matches 1.. run function chaincraft:power/effects

# Chainsaw killed something
execute if score @s zombie_kills matches 1.. run function chaincraft:score/zombie
execute if score @s drowned_kills matches 1.. run function chaincraft:score/drowned
execute if score @s husk_kills matches 1.. run function chaincraft:score/husk
execute if score @s golem_kills matches 1.. run function chaincraft:score/golem

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
execute as @s[scores={dead=1..}] run function chaincraft:power/death

# Drinking blood unless is at limit
#execute unless score acc_blood power >= strength_2 power if block ~ ~-1 ~ red_concrete run function chaincraft:power/absorb_blood
execute if block ~ ~-1 ~ red_concrete run function chaincraft:power/absorb_blood
title @s actionbar {"score":{"name":"acc_blood","objective":"power"},"color":"dark_red"}


# Laugh when reachs strenght_1
execute if score acc_blood power = strength_1 power run function chaincraft:power/laugh/1
# Upgrade weapon when reachs "big" blocks
execute if score acc_blood power = big power run function chaincraft:power/laugh/2
# Laugh when reachs strenght_2
execute if score acc_blood power = strength_2 power run function chaincraft:power/laugh/3

execute if score acc_blood power >= max_blood power run function chaincraft:power/release/main

# Prevent removing armor
execute unless data entity @s Inventory[{Slot:103b}] run function chaincraft:power/get
execute unless data entity @s Inventory[{Slot:102b}] run function chaincraft:power/get