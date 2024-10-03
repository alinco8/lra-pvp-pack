execute unless score @s Stamina matches 1.. run return fail
scoreboard players remove @s Stamina 1
scoreboard players set @s StaminaRestoreTick 40

execute store result score @s Temp run data get entity @s Motion[1] 1000
execute if score @s Temp matches ..0 run data modify entity @s Motion[1] set value -0.05d