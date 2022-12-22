## Denji is a Berserk. Power is a Glass Canon

# Resistance
# effect give @s resistance 3 0 true
# Jump boost
effect give @s jump_boost 3 1 true

# Strength
execute if score acc_blood power >= strength_1 power run effect give @s strength 3 0 true

execute if score acc_blood power >= strength_2 power run function chaincraft:power/strength_2