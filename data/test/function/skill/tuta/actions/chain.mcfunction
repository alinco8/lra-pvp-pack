function test:skill/tuta/actions/detect_same_score_pos

execute as @e[tag=SameScore,tag=!Chain,limit=1,sort=nearest] at @s run function test:skill/tuta/actions/place_block

tag @s add Chained