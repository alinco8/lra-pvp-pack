scoreboard players set @s Use 0
scoreboard players operation @s EffectTime /= $Speed EffectTime

particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 10

tag @s remove cannot_remove

tag @s add speed_gear_one
