scoreboard objectives setdisplay sidebar

clear @a

title @a title [{"text":"winner ","color":"aqua"},{"selector":"@a[gamemode=survival]","color":"gold"}]

execute as @a at @s run playsound ui.toast.challenge_complete block @a

execute as @a run function test:system/death_clear

scoreboard players set global game_running 0

tp @a -33 -57 -3

execute as @a run gamemode survival