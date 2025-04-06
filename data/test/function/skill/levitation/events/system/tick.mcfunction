execute as @a[tag=levitation,scores={Use=1}] at @s run summon armor_stand ^ ^ ^3.5 {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["levitation_pos","levitation_pos_new"]}

execute as @e[tag=levitation_pos] at @s run function test:skill/levitation/events/action/levitation_pos
 
execute as @e[tag=levitation_pos] at @s positioned ~ ~2 ~ as @e[type=arrow,distance=..5] run function test:skill/levitation/events/action/arrow