# selector: ツタ矢

execute unless score @s ID matches 1.. run function test:skill/tuta/actions/random_id
function test:skill/tuta/actions/summon_pos

execute if entity @e[tag=TutaDisplay,distance=..2] run function test:skill/tuta/events/on_ground

execute if entity @s[nbt={inGround:1b}] run function test:skill/tuta/events/on_ground