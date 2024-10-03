effect give @a[distance=..3] slowness 1 4 true
effect give @a[distance=..3] slow_falling 1 5 true
execute as @a[distance=..3] run damage @s 1 drown

effect clear @a[distance=3.1..3.5] slowness
effect clear @a[distance=3.1..3.5] slow_falling