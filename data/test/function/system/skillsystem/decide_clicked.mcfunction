tag @e[tag=skillselectdecideinteraction,limit=1,sort=nearest] add Down

execute as @e[tag=skillselectdecideswitch,limit=1,sort=nearest] at @s run tp @s ~ ~-0.22 ~
scoreboard players set @e[tag=skillselectdecideswitch,limit=1,sort=nearest] Tick 8
execute at @e[tag=skillselect] run particle end_rod ~ ~1.3 ~ 1.5 1 1 0 30 force @a

data remove entity @e[tag=skillselectdecideinteraction,limit=1,sort=nearest] interaction