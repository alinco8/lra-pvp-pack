#selcter = player

execute positioned ^0.75 ^ ^1.7 anchored eyes run function test:skill/hunter/hammer/events/summon_hammer
execute positioned ^-0.75 ^ ^1.7 anchored eyes run function test:skill/hunter/scythe/events/summon_scythe
execute as @e[tag=weapon] at @s rotated as @p[scores={Use=1}] run tp @s ~ ~ ~ ~ ~