tag @e[tag=SameScoreArrow] remove SameScoreArrow
tag @e[tag=SameArrowTemp] remove SameArrowTemp
tag @s add SameArrowTemp

execute as @e[type=arrow,nbt={item:{tag:{tuta_arrow:1b}}}] if score @s ID = @e[tag=SameArrowTemp,limit=1] ID run tag @s add SameScoreArrow

tag @s remove SameArrowTemp

return run execute if entity @e[tag=SameScoreArrow]