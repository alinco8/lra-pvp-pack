execute as @e[type=potion,nbt={Item:{components:{"minecraft:custom_data":{stan_grenade:1b}}}}] at @s run function test:items/stan_grenade/events/grenade/tick
execute as @e[tag=StanGrenadeRider] at @s run function test:items/stan_grenade/events/rider/tick