#> test:skillhunter

execute as @a[tag=hunter,scores={use=1}] at @s positioned ~ ~-1 ~ run summon item_display ^ ^ ^1 {item:{id:"minecraft:diamond_axe",Count:1b},Tags:[kama]}

execute as @a[tag=hunter,scores={use=1}] run scoreboard players set @e[tag=kama,limit=1,sort=nearest] actiontime 10
execute as @e[tag=kama,scores={actiontime=9..}] at @a[tag=hunter,scores={use=1}] positioned ~ ~1.5 ~ run tp ^ ^ ^1.5

execute as @a[tag=hunter,scores={use=1}] at @e[tag=kama,scores={actiontime=8..}] run summon vex ^ ^ ^-0.6 {NoAI:1b,active_effects:[{id:"invisibility",amplifier:10,duration:1000,show_particles:0b}]}
execute if entity @e[tag=kama,scores={actiontime=8}] run damage @e[type=vex,limit=1,sort=nearest] 13 explosion

execute as @e[tag=kama,scores={actiontime=7..9}] at @s positioned ~ ~0.7 ~ run particle dust 0.49 0.008 0.008 1 ~ ~ ~ 1 1 1 0.1 550 normal
execute as @e[tag=kama,scores={actiontime=8}] at @s positioned ~ ~0.7 ~ run playsound block.end_portal.spawn master @a ~ ~ ~ 0.3
execute as @e[tag=kama,scores={actiontime=7}] at @s run stopsound @s master block.end_portal.spawn

execute as @e[tag=kama,scores={actiontime=..6}] at @s if entity @a[tag=hunter,distance=..3,scores={vexkill=1}] run kill @s

give @a[tag=hunter,scores={vexkill=1}] diamond_axe 1 

scoreboard players set @a[tag=hunter,scores={vexkill=1}] actiontime 100

clear @a[scores={actiontime=0}] diamond_axe

scoreboard players set @a[tag=hunter,scores={vexkill=1}] vexkill 0

scoreboard players set @a[scores={use=1}] use 0