execute if score $Global SurvivorCount matches 1.. run tellraw @a ["\n",{"color": "red","selector":"@a[gamemode=survival]"},{"color": "gold","text": "がゲームに勝利した！"}]
execute if score $Global SurvivorCount matches 0 run tellraw @a ["\n",{"text": "誰も勝利しなかった", "color": "blue"}]

scoreboard players set $Global GameRunning 0
team join DisablePvP @a
function test:parkour/events/system/on_clean_up

execute as @a at @s run function test:system/game_in_progress/events/player/on_game_end