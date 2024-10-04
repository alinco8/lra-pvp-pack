summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["water_arrow_point","WaterBallPointNew"]}

scoreboard players set @e[tag=WaterBallPointNew] Tick 80
tag @e[tag=WaterBallPointNew] remove WaterBallPointNew

