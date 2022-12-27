execute as @e[tag=zombie_devil,limit=1,sort=nearest,tag=!attack] run function chaincraft:zombie/devil/add_attack
summon creeper ^ ^ ^.9 {ExplosionRadius:1b,Fuse:0}
#effect give @e[tag=zombie] glowing 5 1 true