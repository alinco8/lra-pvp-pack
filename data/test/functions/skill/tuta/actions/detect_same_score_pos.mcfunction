tag @e[tag=SameScore] remove SameScore
tag @e[tag=SamePosTemp] remove SamePosTemp
tag @s add SamePosTemp

execute as @e[tag=TutaPos] if score @s ID = @e[tag=SamePosTemp,limit=1] ID run tag @s add SameScore

tag @s remove SamePosTemp