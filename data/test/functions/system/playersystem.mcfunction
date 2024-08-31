tag @e[scores={death=0}] add survivor

scoreboard players set global survivor 0
execute as @e[tag=survivor] run scoreboard players add global survivor 1

execute as @e[scores={death=0}] at @s run spawnpoint @s ~ ~ ~

execute as @e[scores={death=1}] run tag @a remove survivor
execute as @e[scores={death=1}] run tag @s add death

execute as @e[scores={death=1}] at @s run gamemode spectator
