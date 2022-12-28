scoreboard players set gamestate config 2
tellraw @a ["\n\n\n\n\n\n\n",{"translate":"stats","bold":true,"underlined":true, "color": "gold"},"\n\n",{"translate":"max_combo"},": ",{"score":{"name":"@s","objective":"max_combo"},"color": "yellow"},"\n",{"translate":"score"},": ",{"score":{"name":"@s","objective":"score"},"color":"yellow"}]
execute if score player_count config matches 2 if score @a[tag=chainsaw,limit=1] score > @a[tag=power,limit=1] score run tellraw @a ["\n",{"translate":"the_demon","color": "#FF6C0A"}," ",{"translate":"console.feedback.8", "color":"aqua"}]
execute if score player_count config matches 2 if score @a[tag=chainsaw,limit=1] score < @a[tag=power,limit=1] score run tellraw @a ["\n",{"translate":"the_fiend","color": "dark_red"}," ",{"translate":"console.feedback.8", "color":"aqua"}]
execute if score player_count config matches 2 if score @a[tag=chainsaw,limit=1] score = @a[tag=power,limit=1] score run tellraw @a ["\n",{"translate":"the_demon","color": "#FF6C0A"}," & ",{"translate":"the_fiend","color": "dark_red"}," ",{"translate":"console.feedback.9", "color":"aqua"}]
kill @e[tag=zombie]
kill @e[tag=zombie_devil]

# Remove devils
execute as @a[tag=chainsaw] run function chaincraft:chainsaw/remove
execute as @a[tag=power] run function chaincraft:power/remove

spawnpoint @a 19 4 -68 90
tp @a 19 4 -68 90 ~

function chaincraft:gamestate/celebration

###coords###
fill 77 3 -101 39 3 -50 gray_concrete replace red_concrete
#{"jformat":8,"jobject":[{"bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"translate":"stats","parameters":[]},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"\n"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"translate":"max_combo","parameters":[]},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":": "},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"score_name":"@s","score_objective":"max_combo","score_value":null},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"\n"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"translate":"score","parameters":[]},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":": "},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"score_name":"@s","score_objective":"score","score_value":null}],"command":"/tellraw @s %s","jtemplate":"tellraw"}

scoreboard players set timer music -1
stopsound @a voice
scoreboard objectives setdisplay sidebar pb
execute as @a unless score @s pb matches 1.. run scoreboard players set @s pb 0
execute as @a if score @s score > @s pb run tellraw @a ["\n",{"translate":"console.feedback.7", "color":"light_purple"}]
tellraw @a ["\n",{"translate":"thanks", "color":"yellow","italic": true}]
execute as @a if score @s score > @s pb run scoreboard players operation @s pb = @s score
bossbar set minecraft:timer visible false
scoreboard players set player_count config 0