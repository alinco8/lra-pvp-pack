execute as @a[distance=..5,gamemode=survival] run function test:items/stan_grenade/events/player/on_hit
particle minecraft:flash ~ ~ ~ 1 1 1 0 400 force

kill @s