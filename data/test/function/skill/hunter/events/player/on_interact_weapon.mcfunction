tag @s add Attacker

execute as @e[type=interaction,tag=HunterItemHammerInteraction] at @s if data entity @s interaction run function test:skill/hunter/events/interaction/on_interact
execute as @e[type=interaction,tag=HunterItemScytheInteraction] at @s if data entity @s interaction run function test:skill/hunter/events/interaction/on_interact

tag @s remove Attacker
advancement revoke @s only test:interact_hunter
