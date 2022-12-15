particle block redstone_block ~ ~1 ~ 0 0 0 1 80 force

fill ~ ~-1 ~ ~ ~-1 ~ red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~1 ~-1 ~ ~1 ~-1 ~ red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~-1 ~-1 ~ ~-1 ~-1 ~ red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~ ~-1 ~1 ~ ~-1 ~1 red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~ ~-1 ~-1 ~ ~-1 ~-1 red_concrete replace gray_concrete

execute if predicate chaincraft:chance/35 run fill ~1 ~-1 ~1 ~1 ~-1 ~1 red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~1 ~-1 ~-1 ~1 ~-1 ~-1 red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~-1 ~-1 ~1 ~-1 ~-1 ~1 red_concrete replace gray_concrete
execute if predicate chaincraft:chance/35 run fill ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 red_concrete replace gray_concrete