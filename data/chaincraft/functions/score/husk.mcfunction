#Add to the total score
scoreboard players operation @s combo_calc = @s combo
scoreboard players operation @s combo_calc *= constant.300 combo_calc
scoreboard players operation @s score += @s combo_calc

scoreboard players set @s husk_kills 0

function chaincraft:score/trigger