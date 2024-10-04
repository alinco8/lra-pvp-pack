execute as @a[gamemode=!survival] at @s run data merge entity @s {abilities:{flySpeed:0.05}}
execute as @a[tag=ParkourEnabled,gamemode=survival] at @s run function test:parkour/events/player/tick