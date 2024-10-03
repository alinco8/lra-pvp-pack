execute at @s positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["fire"],Duration:2}
execute at @s run summon minecraft:arrow ^ ^1.4 ^1 {Tags:["ball"]}
execute as @e[tag=ball] store result entity @s Motion[0] double 0.0001 run data get entity @e[limit=1,tag=fire] Pos[0] 10000
execute as @e[tag=ball] store result entity @s Motion[1] double 0.0001 run data get entity @e[limit=1,tag=fire] Pos[1] 10000
execute as @e[tag=ball] store result entity @s Motion[2] double 0.0001 run data get entity @e[limit=1,tag=fire] Pos[2] 10000

tag @e[tag=ball] remove ball