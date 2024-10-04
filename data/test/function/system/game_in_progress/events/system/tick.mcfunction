function test:parkour/events/system/tick
function test:skill/events/system/tick
execute as @a at @s run function test:system/game_in_progress/events/player/tick

execute store result score $Global SurvivorCount run execute if entity @a[gamemode=survival]
execute if score $Global SurvivorCount matches ..1 run function test:system/game_in_progress/events/system/on_game_end