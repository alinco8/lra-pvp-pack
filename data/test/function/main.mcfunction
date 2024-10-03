#コマンド入れ子
execute as @a[scores={cooltime=1..}] run scoreboard players set @s use 0

execute if score global game_running matches 1 if score global survivor matches 1 run function test:system/endsystem
function test:system/playersystem
function test:items/item_main_system
function test:system/skillsystem/skillsystem
function test:system/skillsystem/skillsystemscore
function test:system/skillsystem/skillsystemselect
execute as @e[tag=MoveFloorpoint] at @s run function test:gimmick/move_floor/actions/movement
function test:gimmick/rope/events/tick
function test:items/itemsystem/tick

# Parkour
execute as @a[gamemode=!survival,gamemode=!adventure] at @s run data merge entity @s {abilities:{flySpeed:0.05}}
execute as @a[tag=ParkourEnabled,gamemode=!creative,gamemode=!spectator] at @s run function test:parkour/events/tick



execute as @e[scores={StaminaRestoreTick=1..}] run scoreboard players remove @s StaminaRestoreTick 1
execute as @e[scores={Tick=1..}] run scoreboard players remove @s Tick 1

kill @e[type=minecraft:arrow,nbt={inGround:1b}]
scoreboard players set @a Sneak 0