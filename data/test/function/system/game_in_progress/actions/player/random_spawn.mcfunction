tag @e[tag=Spawn,tag=!UsedSpawn,sort=random,limit=1] add RandomSpawn
tag @e[tag=RandomSpawn] add UsedSpawn
execute at @e[tag=RandomSpawn] run tp @s ~ ~ ~ ~ ~
tag @e[tag=RandomSpawn] remove RandomSpawn