execute if score @s Tick matches 0 run kill @s

execute as @a[distance=..2] at @s run function test:skill/water/actions/water_lock

tp @s ~ ~ ~ ~5 ~
particle falling_water ^-2 ^0.5 ^ 0 0 0 1 1 force
particle falling_water ^2 ^0.5 ^ 0 0 0 1 1 force
particle falling_water ^ ^0.5 ^-2 0 0 0 1 1 force
particle falling_water ^ ^0.5 ^2 0 0 0 1 1 force