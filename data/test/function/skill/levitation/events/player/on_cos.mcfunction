effect give @s levitation 2 5 true
particle minecraft:cloud ~ ~ ~ 1 1 1 0.3 100 normal @a
data merge entity @s {Motion:[0.0d,0.6d,0.0d]}
execute as @e[distance=..3,type=arrow] run data merge entity @s {Motion:[0.0d,0.6d,0.0d]}

scoreboard players set @s CoolTime 400