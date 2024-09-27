# execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
# execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
# execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ

execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionY run data get entity @s Motion[1] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000
execute unless block ~-.5 ~ ~ #test:bounce_pass store result entity @s Motion[0] double 0.001 run scoreboard players operation @s MotionX *= $-1 Const
execute unless block ~.5 ~ ~ #test:bounce_pass store result entity @s Motion[0] double 0.001 run scoreboard players operation @s MotionY *= $-1 Const
execute unless block ~ ~ ~-.5 #test:bounce_pass store result entity @s Motion[2] double 0.001 run scoreboard players operation @s MotionZ *= $-1 Const
execute unless block ~ ~ ~.5 #test:bounce_pass store result entity @s Motion[2] double 0.001 run scoreboard players operation @s MotionX *= $-1 Const
execute unless block ~ ~-.5 ~ #test:bounce_pass store result entity @s Motion[1] double 0.001 run scoreboard players operation @s MotionY *= $-1 Const
execute unless block ~ ~.5 ~ #test:bounce_pass store result entity @s Motion[1] double 0.001 run scoreboard players operation @s MotionZ *= $-1 Const