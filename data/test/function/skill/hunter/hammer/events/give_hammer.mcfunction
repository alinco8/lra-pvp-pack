# selecter = player

give @s diamond_axe
playsound minecraft:entity.vex.death master @a ~ ~ ~ 10 1 1
execute positioned ^-1.5 ^ ^ run kill @e[tag=scythe_interaction,limit=1,sort=nearest]
execute positioned ^-1.5 ^ ^ run kill @e[tag=scythe,limit=1,sort=nearest]