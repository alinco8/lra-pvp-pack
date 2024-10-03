execute unless score @s Stamina matches 1.. run return fail
scoreboard players remove @s Stamina 1

data modify entity @s Motion[1] set value -0.05d