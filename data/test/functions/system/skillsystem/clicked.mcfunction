tag @e[tag=skillselectinteraction,limit=1,sort=nearest] add Down

execute as @e[tag=skillselectswitch,limit=1,sort=nearest] at @s run tp @s ~ ~-0.22 ~
scoreboard players set @e[tag=skillselectswitch,limit=1,sort=nearest] Tick 8
scoreboard players add $Global skillselect 1
execute at @e[tag=skillselect] run particle end_rod ~ ~1.3 ~ 1.5 1 1 0 30 force @a

#skillselectスコアリセット
execute if score $Global skillselect matches 9 run scoreboard players set $Global skillselect 1

execute as @e[tag=skillselectitem] at @s run particle enchant ~ ~ ~ 0.4 0.4 0.4 0.5 500 normal @a

execute if score $Global skillselect matches 1 run function test:system/skillsystem/select_to/speed
execute if score $Global skillselect matches 2 run function test:system/skillsystem/select_to/levitation
execute if score $Global skillselect matches 3 run function test:system/skillsystem/select_to/invisibility
execute if score $Global skillselect matches 4 run function test:system/skillsystem/select_to/acceleration
execute if score $Global skillselect matches 5 run function test:system/skillsystem/select_to/scythe_summon
execute if score $Global skillselect matches 6 run function test:system/skillsystem/select_to/ive
execute if score $Global skillselect matches 7 run function test:system/skillsystem/select_to/fire
execute if score $Global skillselect matches 8 run function test:system/skillsystem/select_to/water


data remove entity @e[tag=skillselectinteraction,limit=1,sort=nearest] interaction