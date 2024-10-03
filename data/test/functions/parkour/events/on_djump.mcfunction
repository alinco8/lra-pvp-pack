execute unless score @s Stamina matches 15.. run return fail
scoreboard players remove @s Stamina 15
scoreboard players set @s StaminaRestoreTick 40

execute anchored eyes rotated ~ 0 run summon area_effect_cloud ^ ^ ^0.4 {Tags:["MotionCalcTemp"]}
function test:libs/pos2score
execute as @e[tag=MotionCalcTemp] at @s run function test:libs/pos2score

scoreboard players operation @e[tag=MotionCalcTemp,limit=1,sort=nearest] X -= @s X
scoreboard players operation @e[tag=MotionCalcTemp,limit=1,sort=nearest] Z -= @s Z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @e[tag=MotionCalcTemp,limit=1,sort=nearest] X
data modify entity @s Motion[1] set value 0.7d
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @e[tag=MotionCalcTemp,limit=1,sort=nearest] Z

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ .4 1.6
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ .7 2
execute anchored feet run particle snowflake ~ ~ ~ 0.1 0 0.1 0 10 force @a

scoreboard players add @s DJumpUsed 1
kill @e[tag=MotionCalcTemp]