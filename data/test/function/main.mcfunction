execute as @a[scores={CoolTime=1..}] run scoreboard players set @s Use 0

execute if score $Global GameRunning matches 1 run function test:system/game_in_progress/events/system/tick

function test:items/events/system/tick
# function test:system/skillsystem/skillsystemselect
# execute as @e[tag=MoveFloorpoint] at @s run function test:gimmick/move_floor/actions/movement
# function test:gimmick/rope/events/tick
# function test:items/itemsystem/tick

## 自動減算スコアの減算

scoreboard players set @a[scores={Use=1..}] Use 0
scoreboard players remove @a[scores={CoolTime=1..}] CoolTime 1
scoreboard players remove @e[scores={TutaTime=0..}] TutaTime 1
# scoreboard players remove @e[tag=!noremove,scores={ActionTime=0..}] ActionTime 1
scoreboard players remove @e[tag=!cannot_remove,scores={EffectTime=1..}] EffectTime 1
scoreboard players add @a[scores={Running=1..}] RunCount 1
execute as @e[scores={StaminaRestoreTick=1..}] run scoreboard players remove @s StaminaRestoreTick 1
execute as @e[scores={Tick=1..}] run scoreboard players remove @s Tick 1
execute as @e[type=#arrows] if predicate test:in_ground run kill @s
scoreboard players set @a Sneak 0