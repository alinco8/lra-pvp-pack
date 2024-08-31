scoreboard objectives setdisplay sidebar

execute as @a run function test:system/death_clear

clear @a

title @a title [{"text":"winner ","color":"aqua"},{"selector":"@a[tag=survivor]","color":"gold"}]

execute as @a at @s run playsound ui.toast.challenge_complete block @a

scoreboard players set global game_running 0

tp @a -33 -58 -3