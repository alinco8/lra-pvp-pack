execute anchored feet positioned ~ ~-0.4 ~ rotated ~ 0 run summon area_effect_cloud ^ ^ ^0.4 {NoGravity:1b,Tags:["WJumpTemp"]}

execute store result score $MotionX Temp run data get entity @e[tag=WJumpTemp,limit=1] Pos[0] 100
execute store result score $MotionY Temp run data get entity @e[tag=WJumpTemp,limit=1] Pos[1] 100
execute store result score $MotionZ Temp run data get entity @e[tag=WJumpTemp,limit=1] Pos[2] 100
execute store result score $PlayerX Temp run data get entity @s Pos[0] 100
execute store result score $PlayerY Temp run data get entity @s Pos[1] 100
execute store result score $PlayerZ Temp run data get entity @s Pos[2] 100
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation $MotionX Temp -= $PlayerX Temp
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation $MotionY Temp -= $PlayerY Temp
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation $MotionZ Temp -= $PlayerZ Temp

kill @e[tag=WJumpTemp]

scoreboard players add @s WJumpUsed 1