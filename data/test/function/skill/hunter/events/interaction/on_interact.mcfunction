execute if entity @s[tag=HunterItemHammerInteraction] run function test:skill/hunter/events/interaction/on_interact_hammer
execute if entity @s[tag=HunterItemScytheInteraction] run function test:skill/hunter/events/interaction/on_interact_scythe

data remove entity @s interaction
