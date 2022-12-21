say DONE STOP THAT'S IT
scoreboard players set gamestate config 2
execute as @a run tellraw @s {"score":{"name":"@s","objective":"score"},"bold":true}
kill @e[tag=zombie]
#{"jformat":8,"jobject":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"score_name":"@s","score_objective":"score","score_value":null}],"command":"/tellraw @s %s","jtemplate":"tellraw"}