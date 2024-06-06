#> test:skillneon

#終焉逃避行
scoreboard players set @a[tag=neon,scores={use=1}] effecttime 200

scoreboard players set @a[tag=neon,scores={use=1}] runcount 0


execute as @a[tag=neon,scores={effecttime=1..,runcount=0}] run attribute @s minecraft:generic.movement_speed base set 0.1

execute as @a[tag=neon,scores={effecttime=199}] run attribute @s minecraft:generic.movement_speed base set 0.2
effect give @a[scores={use=1..,cooltime=0},tag=neon] jump_boost 8 1 true

execute as @a[tag=neon,scores={effecttime=1..,runcount=30}] run attribute @s minecraft:generic.movement_speed base set 0.3

execute as @a[tag=neon,scores={effecttime=1..,runcount=60}] run attribute @s minecraft:generic.movement_speed base set 0.35

execute as @a[tag=neon,scores={effecttime=1..,runcount=90}] run attribute @s minecraft:generic.movement_speed base set 0.4

execute as @a[tag=neon,scores={effecttime=1..,runcount=120}] run attribute @s minecraft:generic.movement_speed base set 0.45

execute as @a[tag=neon,scores={effecttime=1..,runcount=150}] run attribute @s minecraft:generic.movement_speed base set 0.5

execute as @a[tag=neon,scores={use=1,runcount=180}] run attribute @s minecraft:generic.movement_speed base set 0.55

execute as @a[tag=neon,scores={effecttime=0}] run attribute @s minecraft:generic.movement_speed base set 0.1

scoreboard players set @a[tag=neon,scores={effecttime=0}] runcount 0


scoreboard players set @a[tag=neon] running 0

scoreboard players set @a[scores={use=1..},tag=neon] use 0