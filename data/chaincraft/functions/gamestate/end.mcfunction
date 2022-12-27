scoreboard players set gamestate config 2
execute as @a run tellraw @s ["",{"translate":"stats","bold":true,"underlined":true},"\n",{"translate":"max_combo"},": ",{"score":{"name":"@s","objective":"max_combo"},"bold":true},"\n",{"translate":"score"},": ",{"score":{"name":"@s","objective":"score"},"bold":true}]
execute if score player_count config matches 2 if score @a[tag=chainsaw,limit=1] score > @a[tag=power,limit=1] score run say Chainsaw Man won!
execute if score player_count config matches 2 if score @a[tag=chainsaw,limit=1] score < @a[tag=power,limit=1] score run say Power won!
execute if score player_count config matches 2 if score @a[tag=chainsaw,limit=1] score = @a[tag=power,limit=1] score run say Chainsaw Man and Power tied!
kill @e[tag=zombie]
kill @e[tag=zombie_devil]

# Remove devils
execute as @a[tag=chainsaw] run function chaincraft:chainsaw/remove
execute as @a[tag=power] run function chaincraft:power/remove

spawnpoint @a 19 4 -68 90
tp @a 19 4 -68 90 ~
###coords###
fill 77 3 -101 39 3 -50 gray_concrete replace red_concrete
#{"jformat":8,"jobject":[{"bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"translate":"stats","parameters":[]},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"\n"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"translate":"max_combo","parameters":[]},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":": "},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"score_name":"@s","score_objective":"max_combo","score_value":null},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"\n"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"translate":"score","parameters":[]},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":": "},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"score_name":"@s","score_objective":"score","score_value":null}],"command":"/tellraw @s %s","jtemplate":"tellraw"}

scoreboard players set timer music -1
stopsound @a voice
scoreboard objectives setdisplay sidebar pb
execute as @a unless score @s pb matches 1.. run scoreboard players set @s pb 0
execute as @a if score @s score > @s pb run say Personal Best!
execute as @a if score @s score > @s pb run scoreboard players operation @s pb = @s score
bossbar set minecraft:timer visible false
scoreboard players set player_count config 0