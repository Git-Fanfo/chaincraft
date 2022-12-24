scoreboard players set @s score 0
scoreboard players set @s max_combo 0
tp 36 9 -98
function chaincraft:power/get
scoreboard players set timer config 300
scoreboard players set gamestate config 1
scoreboard players add player_count config 1
