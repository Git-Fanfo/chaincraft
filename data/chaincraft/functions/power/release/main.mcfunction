execute if score acc_blood power >= strength_1 power unless score acc_blood power >= big power run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;5768198]},{Type:0,Colors:[I;3474180]}]}}}}
execute if score acc_blood power >= big power unless score acc_blood power = strength_2 power run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;5768198]},{Type:1,Colors:[I;3474180]},{Type:0,Colors:[I;5768198]},{Type:0,Colors:[I;3474180]}]}}}}
execute if score acc_blood power >= strength_2 power run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;5768198]},{Type:1,Colors:[I;3474180]},{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;5768198]},{Type:1,Colors:[I;3474180]},{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;5768198]},{Type:1,Colors:[I;3474180]}]}}}}

data modify entity @e[type=firework_rocket,sort=nearest,limit=1] Owner set from entity @s UUID

effect give @s resistance 1 255 true
scoreboard players set acc_blood power 0
function chaincraft:give/power/select_hammer