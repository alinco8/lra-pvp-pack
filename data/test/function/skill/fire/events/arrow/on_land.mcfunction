summon fireball ~ ~ ~ {Tags:["New"]}

execute on passengers store result entity @e[tag=New,limit=1] Motion[0] double 0.00001 run scoreboard players get @s X
execute on passengers store result entity @e[tag=New,limit=1] Motion[1] double 0.00001 run scoreboard players get @s Y
execute on passengers store result entity @e[tag=New,limit=1] Motion[2] double 0.00001 run scoreboard players get @s Z

tag @e[tag=New] remove New