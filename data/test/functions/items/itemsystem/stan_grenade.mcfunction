execute as @e[tag=!on_stan_point,nbt={Item:{tag:{stan_grenade:1b}}}] at @s positioned ~ ~1 ~ unless entity @e[dx=0,tag=stan_grenade_point] run summon armor_stand ~ ~ ~ {Tags:["stan_grenade_point"],Marker:1b,Invisible:1b}

execute as @e[tag=stan_grenade_point] at @s run ride @s mount @e[nbt={Item:{tag:{stan_grenade:1b}}},limit=1,sort=nearest]

execute as @e[tag=stan_grenade_point] at @s on vehicle run tag @s add on_stan_point

execute as @e[tag=stan_grenade_point] at @s positioned ~ ~-1 ~ unless entity @e[dx=0,nbt={Item:{tag:{stan_grenade:1b}}}] run function test:items/item_effect/stan_grenade_system