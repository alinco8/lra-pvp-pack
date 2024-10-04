title @a title {"text": "Start!","color": "red"}
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~

function test:system/game_in_progress/events/system/on_game_start

scoreboard players set $Global GameRunning 1
