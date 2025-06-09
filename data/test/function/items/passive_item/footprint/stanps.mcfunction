summon armor_stand ~ ~10 ~ {Tags:[Foot_print,New_print],NoGravity:1b,Invisible:1b,Invulnerable:1b}

scoreboard players set @e[tag=New_print] FootPrints 160
tag @e[tag=New_print,scores={FootPrints=..160}] remove New_print

scoreboard players set @a[predicate=test:on_ground] FootPrints 40