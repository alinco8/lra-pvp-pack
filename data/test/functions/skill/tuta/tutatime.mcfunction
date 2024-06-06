tag @s add Temp

execute as @e[sort=nearest,tag=tuta_pos,scores={tutatime=-2}] at @s if score @s id = @e[tag=Temp,limit=1] id run tag @s add Onaji

scoreboard players set @e[tag=Onaji,limit=1,sort=nearest] tutatime 300

tag @e[tag=Onaji] remove Onaji
tag @e[tag=Temp] remove Temp