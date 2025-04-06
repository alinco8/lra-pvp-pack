scoreboard players set @s[tag=levitation_pos_new] Tick 200
tag @s remove levitation_pos_new

tp @s ~ ~ ~ ~53 ~

effect give @a[distance=..3] levitation 1 12 true
execute positioned ~ ~6 ~ run effect give @a[distance=..5] levitation 1 5 true

effect clear @a[distance=11..13] levitation

particle sweep_attack ^ ^1 ^2 0.2 8 0.2 0.1 12
particle sweep_attack ^ ^1 ^-2 0.2 8 0.2 0.1 12
particle sweep_attack ^2 ^1 ^ 0.2 8 0.2 0.1 12
particle sweep_attack ^-2 ^1 ^ 0.2 8 0.2 0.1 12

particle sweep_attack ^2.5 ^8 ^2.5 0.3 3 0.3 0.1 6
particle sweep_attack ^-2.5 ^8 ^-2.5 0.3 3 0.3 0.1 6
particle sweep_attack ^2.5 ^8 ^-2.5 0.3 3 0.3 0.1 6
particle sweep_attack ^-2.5 ^8 ^2.5 0.3 3 0.3 0.1 6

kill @s[scores={Tick=0}]