# Delete
clear @s carrot_on_a_stick{hammer:1b}

# Mini
execute unless score acc_blood power >= big power run give @s carrot_on_a_stick{display:{Name:'{"translate":"bloodthirsty","color":"#FF2E2E","bold":true,"italic":false}',Lore:['{"translate":"bloodthirsty.desc.1","color":"white","italic":false}','{"translate":"bloodthirsty.desc.2","color":"white","italic":false}','{"translate":"bloodthirsty.desc.3","color":"white","italic":false}','{"translate":"bloodthirsty.desc.4","color":"white","italic":false}','{"translate":"bloodthirsty.desc.5","color":"white","italic":false}','{"translate":"bloodthirsty.desc.6","color":"white","italic":false}','{"text":" "}','{"translate":"bloodthirsty.cond","color":"gray","italic":false}','{"translate":"bloodthirsty.rew.1","color":"blue","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:3,power:1b,hammer:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;375065619,1288325281,-1394246024,-2039596402],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:2,Operation:0,UUID:[I;-523583335,1952531775,-1191387875,304036418],Slot:"mainhand"}]} 1

# Big with 13 doesn't die with 1 hit
execute if score acc_blood power >= big power run give @s carrot_on_a_stick{display:{Name:'{"translate":"bloodthirsty","color":"#FF2E2E","bold":true,"italic":false}',Lore:['{"translate":"bloodthirsty.desc.1","color":"white","italic":false}','{"translate":"bloodthirsty.desc.2","color":"white","italic":false}','{"translate":"bloodthirsty.desc.3","color":"white","italic":false}','{"translate":"bloodthirsty.desc.4","color":"white","italic":false}','{"translate":"bloodthirsty.desc.5","color":"white","italic":false}','{"translate":"bloodthirsty.desc.6","color":"white","italic":false}','{"text":" "}','{"translate":"bloodthirsty.cond","color":"gray","italic":false}','{"translate":"bloodthirsty.rew.1","color":"blue","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:4,power:1b,hammer:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:13,Operation:0,UUID:[I;375065619,1288325281,-1394246024,-2039596402],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-4,Operation:0,UUID:[I;-523583335,1952531775,-1191387875,304036418],Slot:"mainhand"}]} 1