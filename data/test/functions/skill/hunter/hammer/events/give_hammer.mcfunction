# selecter = player

give @s diamond_axe
playsound minecraft:entity.vex.death master @a ~ ~ ~ 10 1 1
execute positioned ^-1.5 ^ ^ run kill @e[tag=scythe_interaction]
execute positioned ^-1.5 ^ ^ run kill @e[tag=kama]