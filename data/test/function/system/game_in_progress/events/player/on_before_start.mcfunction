gamemode survival @s
clear @s
team join PvP @s

give @s iron_sword
give @s bow
give @s bread 10
give @s arrow 32
give @s spyglass
give @s carrot_on_a_stick
give @s minecraft:splash_potion[custom_data={stan_grenade:1b}] 16
give @s minecraft:snowball[custom_data={smoke_grenade:1b}] 64

effect give @s instant_health 1 255 true
effect give @s saturation 1 255 true
effect give @s resistance infinite 2 true

function test:system/game_in_progress/actions/player/random_spawn