# Scatterタグを持つarmor_standごとに実行
execute as @e[type=armor_stand,tag=Scatter] at @s run execute as @e[distance=..3.5,type=!armor_stand] at @s run function test:skill/weapons/events/hammer/skill/push_entity

particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 10
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 0.8
execute unless block ~ ~ ~ bedrock run function test:skill/weapons/events/hammer/crater/create_crater