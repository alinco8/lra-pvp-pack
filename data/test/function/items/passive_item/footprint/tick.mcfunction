scoreboard players remove @e[scores={FootPrints=1..}] FootPrints 1

execute as @a[scores={FootPrints=0}] at @s if predicate test:on_ground run function test:items/passive_item/footprint/stanps

execute as @e[tag=Foot_print] at @s run particle dust{color:11630929,scale:1} ~ ~-10 ~ 0.3 0 0.3 0.01 1 normal @a[tag=explorer]

execute as @e[tag=Foot_print,scores={FootPrints=0}] run kill @s