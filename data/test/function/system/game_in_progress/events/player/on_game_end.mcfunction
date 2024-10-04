playsound ui.toast.challenge_complete master @s ~ ~ ~

execute if entity @s[gamemode=survival] at @s run function test:system/game_in_progress/events/player/on_victory
execute if entity @s[gamemode=!survival] at @s run function test:system/game_in_progress/events/player/on_lose

tp @s -33 -57 -3
gamemode survival