execute as @e[type=potion,nbt={New_grenade_pos:1b}] at @s run summon armor_stand ~ ~ ~ {Tags:[GrenadeRider,New_GrenadeRider]}
execute as @e[type=potion,nbt={New_grenade_pos:1b}] at @s run ride @e[tag=New_GrenadeRider,limit=1,sort=nearest] mount @s

