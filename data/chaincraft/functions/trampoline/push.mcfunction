execute unless score @s push matches 0.. run scoreboard players set @s push 10

execute if score @s push matches 10 run effect give @s levitation 1 20 true

execute if score @s push matches 7 run effect clear @s levitation
execute if score @s[tag=push_north] push matches 7 run function chaincraft:trampoline/push_nort
execute if score @s[tag=push_south] push matches 7 run function chaincraft:trampoline/push_south
execute if score @s[tag=push_east] push matches 7 run function chaincraft:trampoline/push_east
execute if score @s[tag=push_west] push matches 7 run function chaincraft:trampoline/push_west

execute if score @s push matches 2 run tag @s remove push
scoreboard players remove @s push 1