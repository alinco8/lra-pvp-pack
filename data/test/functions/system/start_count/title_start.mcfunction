title @a title "Start!"
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~
scoreboard objectives setdisplay sidebar survivor
scoreboard players set global game_running 1
effect give @a instant_health 1 100