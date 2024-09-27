execute as @e[type=arrow,nbt={item:{tag:{water_ball:1b}}}] at @s positioned ~ ~1 ~ unless entity @e[dx=0,tag=water_ball_point] run summon armor_stand ~ ~ ~ {Tags:["water_ball_point"]}

execute as @e[tag=water_ball_point] at @s run ride @s mount @e[type=arrow,nbt={item:{tag:{water_ball:1b}}},limit=1,sort=nearest]

execute as @e[tag=water_ball_point] at @s positioned ~ ~-1 ~ unless entity @e[dx=0,type=arrow,nbt={item:{tag:{water_ball:1b}}}] run function test:skill/water/events/summon_water_floor

execute as @e[tag=water_ball_point] at @s positioned ~ ~-1 ~ unless entity @e[dx=0,type=arrow,nbt={item:{tag:{water_ball:1b}}}] run kill @s

give @s tipped_arrow{water_ball:1b,CustomPotionColor:14496}