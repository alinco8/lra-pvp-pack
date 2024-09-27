execute as @a[distance=..3] run function test:effects/effectstan
particle flash ~ ~ ~ 0.4 0.4 0.4 0.1 1000 normal @a
execute as @e[tag=stan_grenade_point] at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 3 0.5 0
kill @s