#selcter = server

execute as @e[type=minecraft:interaction,tag=scythe_interaction] at @s on attacker run function test:skill/hunter/scythe/events/give_scythe
execute as @e[type=minecraft:interaction,tag=scythe_interaction,nbt={attack:{}}] at @s run function test:skill/hunter/system/kill_weapon