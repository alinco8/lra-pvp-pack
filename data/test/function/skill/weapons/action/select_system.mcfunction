effect clear @s[tag=!weapon_select] darkness

execute as @a[tag=weapon_user,scores={Use=1}] at @s run function test:skill/weapons/action/summon

execute as @a[tag=weapon_user] at @s positioned ~ ~1.55 ~ if entity @e[type=interaction,tag=summoning_weapons,distance=..0.2] run function test:skill/weapons/events/display/icons
execute as @a[tag=weapon_select] at @e[tag=summoning_weapons] run function test:skill/weapons/action/weapon_effect


execute as @e[type=interaction,nbt={attack:{}}] run kill @s
execute as @e[type=interaction,nbt={interaction:{}}] run kill @s

execute as @e[tag=summoning_weapons] at @s unless entity @e[type=player,tag=weapon_user,dy=0] run kill @s
