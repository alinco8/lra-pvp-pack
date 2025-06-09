# Scatterタグを持つarmor_standごとに実行
execute as @e[type=armor_stand,tag=Condense] at @s run execute as @e[distance=..7,type=!armor_stand] at @s run function test:skill/weapons/events/scythe/skill/pull_entity

particle minecraft:dust{color:[0.0,0.0,1.0],scale:1} ~ ~ ~ 1.25 1.25 1.25 0 10