summon armor_stand ^ ^ ^4 {NoGravity:1b,Tags:["wallpos"],Passengers:[{id:shulker,NoAI:1b,Tags:["wall_shulker"],Passengers:[{id:shulker,NoAI:1b,Tags:["wall_shulker"],Passengers:[{id:shulker,NoAI:1b,Tags:["wall_shulker"]}]}]}]}
execute as @e[tag=wallpos,tag=!wallpos_score] at @s run scoreboard players set @s EffectTime 100
execute as @e[tag=wallpos,scores={EffectTime=0..}] at @s run tag @s add wallpos_score
execute as @e[tag=wallpos] at @s rotated as @p[tag=hunter,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~