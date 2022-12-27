#Add to the total score
scoreboard players operation @s combo_calc = @s combo
scoreboard players operation @s combo_calc *= constant.200 combo_calc
scoreboard players operation @s score += @s combo_calc

scoreboard players set @s drowned_kills 0

function chaincraft:score/trigger