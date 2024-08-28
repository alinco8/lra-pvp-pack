tag @a[tag=battou,scores={effecttime=0}] add noremove
tag @a[tag=battou,scores={effecttime=1}] remove noremove

scoreboard players set @a[tag=battou,scores={use=1}] actiontime 11
tag @a[tag=battou,scores={use=1}] add battouuse

execute as @a[tag=battou,scores={use=1}] at @s run summon armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:true,Tags:["battoukyori"]}
execute as @a[tag=battou,scores={use=1}] at @s run summon armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:true,Tags:["battoucharge"]}

execute as @e[tag=battoukyori] unless score @s id matches 1..1000 store result score @s id run random value 1..1000

execute as @e[tag=battoukyori] at @s positioned ~ ~ ~ store result score @e[tag=battou,limit=1,sort=nearest] id run scoreboard players get @s id

execute as @a[tag=battou,scores={effecttime=1,actiontime=10}] run say stan

execute as @a[tag=battou,scores={effecttime=1,actiontime=11}] at @s run tp @e[tag=battoukyori,limit=1,sort=nearest] ~ ~1 ~ ~ ~
execute as @a[tag=battou,scores={effecttime=1,actiontime=11}] at @s run tp @e[tag=battoucharge,limit=1,sort=nearest] ~ ~1 ~ ~ ~


execute as @a[tag=battou,scores={effecttime=1}] at @e[tag=battoucharge] run tp @s ~ ~ ~ ~ ~

execute as @e[tag=battoukyori] at @s if score @s id = @a[tag=battou,scores={actiontime=1..10,effecttime=1},limit=1,sort=nearest] id if entity @a[tag=battou,scores={actiontime=1..10,effecttime=1},limit=1,sort=nearest] if block ^ ^ ^0.8 air run tp ^ ^ ^1.5

execute as @e[tag=battoukyori] at @s run particle enchanted_hit ~ ~-0.5 ~ 0.15 0.15 0.15 0.5 30 normal @a[tag=battou,scores={actiontime=1..10,effecttime=1},limit=1,sort=nearest]

execute as @e[tag=battoukyori] at @s run particle instant_effect ~ ~-0.5 ~ 0.05 0.05 0.05 0.5 30 normal @a[tag=battou,scores={actiontime=1..10,effecttime=1},limit=1,sort=nearest]

execute as @a[tag=battou,tag=battouuse,scores={effecttime=0,actiontime=..10}] at @s unless entity @e[tag=battoukyori,distance=..1] run ride @s mount @e[tag=battoucharge,limit=1,sort=nearest]

execute as @e[tag=battoucharge,limit=1,sort=nearest] at @s if entity @a[tag=battou,scores={actiontime=..10,effecttime=0},limit=1,sort=nearest] run tp @s ^ ^ ^1

execute as @a[tag=battou,tag=battouuse,scores={effecttime=0,actiontime=..10}] at @s positioned ^ ^ ^-1 if entity @e[distance=..0.7,tag=battoukyori] run function test:skill/battou/battoulast

execute as @e[tag=battou,scores={actiontime=0..10,effecttime=0}] at @s run function test:skill/battou/batdamage

scoreboard players set @a[tag=battou,scores={use=1}] use 0