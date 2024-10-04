# selector: ツタ矢

execute unless score @s ID matches 1.. run function test:skill/tuta/actions/arrow/random_id
function test:skill/tuta/actions/arrow/summon_pos

execute if entity @e[tag=TutaDisplay,distance=..2] run function test:skill/tuta/events/arrow/on_ground

execute if predicate test:in_ground run function test:skill/tuta/events/arrow/on_ground