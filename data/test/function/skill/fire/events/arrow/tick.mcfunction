particle flame ~ ~ ~ 0 0 0 0 1

execute if entity @s[tag=!Init] run function test:skill/fire/events/arrow/on_init

execute if predicate test:in_ground run function test:skill/fire/events/arrow/on_land