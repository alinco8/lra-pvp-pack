execute as @s at @s if entity @e[tag=battoukyori,distance=..1] run effect clear @s

execute as @s at @s if entity @e[tag=battoukyori,limit=1,sort=nearest] run particle flash ~ ~ ~ 0.3 0.3 0.3 0.1 30 normal @a

tag @s remove battouuse

execute as @s at @s run kill @e[tag=battoukyori,limit=1,sort=nearest]
execute as @s run kill @e[tag=battoucharge,limit=1,sort=nearest] 

scoreboard players set @s actiontime -1
