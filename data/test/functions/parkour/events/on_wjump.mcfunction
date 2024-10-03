execute anchored eyes rotated ~ 0 run summon area_effect_cloud ^ ^ ^0.4 {Tags:["MotionCalcTemp"]}
function test:libs/pos2score
execute as @e[tag=MotionCalcTemp] at @s run function test:libs/pos2score

scoreboard players operation @e[tag=MotionCalcTemp,limit=1,sort=nearest] X -= @s X
scoreboard players operation @e[tag=MotionCalcTemp,limit=1,sort=nearest] Z -= @s Z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @e[tag=MotionCalcTemp,limit=1,sort=nearest] X
data modify entity @s Motion[1] set value 0.7d
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @e[tag=MotionCalcTemp,limit=1,sort=nearest] Z

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ .3 2
playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 2
scoreboard players add @s WJumpUsed 1
kill @e[tag=MotionCalcTemp]