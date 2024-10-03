execute as @e[tag=!on_smoke_point,nbt={Item:{tag:{smoke_grenade:1b}}}] at @s positioned ~ ~1 ~ unless entity @e[dx=0,tag=smoke_grenade_point] run summon armor_stand ~ ~ ~ {Tags:["smoke_grenade_point"],Marker:1b,Invisible:1b}

execute as @e[tag=smoke_grenade_point] at @s run ride @s mount @e[nbt={Item:{tag:{smoke_grenade:1b}}},limit=1,sort=nearest]

execute as @e[tag=smoke_grenade_point] at @s on vehicle run tag @s add on_smoke_point

execute as @e[tag=smoke_grenade_point] at @s positioned ~ ~-1 ~ unless entity @e[dx=0,nbt={Item:{tag:{smoke_grenade:1b}}}] run function test:items/item_effect/smoke_system