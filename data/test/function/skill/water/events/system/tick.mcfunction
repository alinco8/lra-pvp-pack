execute as @e[type=arrow,nbt={item:{components:{"minecraft:custom_data":{water_arrow:1b}}}}] at @s run function test:skill/water/events/arrow/tick
execute as @e[tag=water_arrow_point] at @s run function test:skill/water/events/water_ball/tick
execute as @a[tag=water,scores={Use=1..}] at @s run function test:skill/water/events/player/on_cos