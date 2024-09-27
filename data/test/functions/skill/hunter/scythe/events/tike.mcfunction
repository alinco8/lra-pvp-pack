execute as @a[tag=hunter_scythe,scores={Sneak=1,actiontime=-1}] at @s positioned ^ ^ ^3 run function test:skill/hunter/scythe/events/summon_wall
execute as @a[tag=hunter_scythe,scores={Sneak=1,actiontime=-1}] at @e[tag=wall_point] positioned ^1 ^ ^ run function test:skill/hunter/scythe/events/summon_wall
execute as @a[tag=hunter_scythe,scores={Sneak=1,actiontime=-1}] at @e[tag=wall_point] positioned ^-1 ^ ^ run function test:skill/hunter/scythe/events/summon_wall

scoreboard players set @a[tag=hunter_scythe,scores={Sneak=1,actiontime=-1}] actiontime 10