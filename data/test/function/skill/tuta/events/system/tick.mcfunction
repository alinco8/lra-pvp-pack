execute as @e[type=arrow,nbt={item:{components:{"minecraft:custom_data":{tuta_arrow:1b}}}}] at @s run function test:skill/tuta/events/arrow/tick
execute as @e[tag=Chain,tag=!Chained] at @s run function test:skill/tuta/actions/chain
execute as @e[tag=TutaDisplay,scores={Tick=0}] at @s run function test:skill/tuta/events/display/on_destroy

execute as @e[tag=TutaDisplay] at @s positioned ~-0.5 ~ ~-0.5 run effect clear @a[dx=0,dy=1,dz=0] levitation
execute as @e[tag=TutaDisplay] at @s positioned ~-0.6 ~ ~-0.6 run effect give @a[dx=0.2,dy=-0.2,dz=0.2,scores={Sneak=0}] levitation 1 1 true

execute as @e[tag=TutaPos,tag=!Reserved] at @s unless function test:skill/tuta/actions/detect_same_score_arrow run kill @s

execute as @a[tag=tuta,scores={Use=1..}] at @s run function test:skill/tuta/events/player/on_cos