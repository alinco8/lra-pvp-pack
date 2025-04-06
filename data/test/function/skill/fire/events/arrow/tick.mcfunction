execute on origin run tag @s add FireArrowResistance

particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 100

execute at @s as @a[tag=!FireArrowResistance,distance=..4] run damage @s 18 in_fire
execute at @s as @a[tag=!FireArrowResistance,distance=..4] run effect give @s wither 2 3 true

execute if entity @s[tag=!Init] run function test:skill/fire/events/arrow/on_init

execute if predicate test:in_ground run function test:skill/fire/events/arrow/on_land

execute as @a[tag=FireArrowResistance] run tag @s remove FireArrowResistance