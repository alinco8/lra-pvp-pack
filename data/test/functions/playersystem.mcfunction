tag @a[scores={death=0}] add survivor

scoreboard players set survivor survivor 0
execute as @a[tag=survivor] run scoreboard players add survivor survivor 1

execute as @a[scores={death=0}] at @s run spawnpoint @s ~ ~ ~

execute as @a[scores={death=1}] run tag @a remove survivor
execute as @a[scores={death=1}] run tag @s add death

execute as @a[scores={death=1}] at @s run gamemode spectator
