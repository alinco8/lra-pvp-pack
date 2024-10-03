gamemode survival @s

clear @s
give @s iron_sword
give @s bow
give @s bread 10
give @s arrow 32
give @s spyglass
give @s carrot_on_a_stick
item replace entity @a armor.chest with elytra

give @s minecraft:splash_potion{stan_grenade:1b} 16

give @s minecraft:snowball{smoke_grenade:1b} 64

effect give @s instant_health 1 30 true
effect give @s saturation 1 30 true
effect give @s resistance infinite 2 true

team join Test @s

function test:effects/effectstan

execute at @e[tag=Spawn,tag=!UsedSpawnPoint,sort=random,limit=1] run function test:system/random_spawn/_