#コマンド入れ子
execute if score global game_running matches 1 if score global survivor matches 1 run function test:system/endsystem
function test:system/playersystem
function test:system/skillsystem/skillsystem
function test:system/skillsystem/skillsystemscore
function test:gimmick
function test:system/skillsystem/skillsystemselect

execute as @e[scores={Tick=1..}] run scoreboard players remove @s Tick 1