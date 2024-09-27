#> test:skillfire

scoreboard players set @a[tag=fire,scores={use=1}] actiontime 10

execute as @a[tag=fire,scores={use=1}] at @s run summon fireball ~ ~1.2 ~ {Tags:[firepower]}

execute as @a[tag=fire,scores={actiontime=8..9}] at @s run scoreboard players set @e[tag=firepower,limit=1,sort=nearest] actiontime 25



execute as @e[tag=firepower] at @s positioned ~ ~0.7 ~ run effect give @e[tag=!firepower,distance=0.5..1.4] instant_damage 1 0

execute as @e[tag=firepower] at @s positioned ^0.7 ^ ^-0.3 run effect give @e[tag=!firepower,distance=0.5..1.2] instant_damage 1 0
execute as @e[tag=firepower] at @s positioned ^-0.7 ^ ^-0.3 run effect give @e[tag=!firepower,distance=0.5..1.2] instant_damage 1 0

execute as @e[tag=firepower] at @s as @e[tag=TutaDisplay,distance=..2.5] at @s run function test:skill/tuta/events/on_burn_out
execute as @e[tag=firepower] at @s as @e[tag=TutaDisplay,distance=..4] at @s run function test:skill/tuta/events/on_burn


execute as @e[tag=firepower] at @s run particle flame ~ ~ ~ 1.5 1.5 1.5 0.15 50 force @a
execute as @a[tag=fire] at @a if entity @e[tag=firepower] run effect clear @s resistance
execute as @e[tag=firepower] at @s run effect give @a[limit=1,sort=nearest,dx=0] resistance 1 2 true

kill @e[tag=firepower,scores={actiontime=0}]
scoreboard players set @a[tag=fire] use 0 