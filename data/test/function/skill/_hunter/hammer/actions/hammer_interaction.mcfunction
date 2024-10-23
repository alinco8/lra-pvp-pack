#selcter = server

execute as @e[type=minecraft:interaction,tag=hammer_interaction] at @s on attacker run function test:skill/hunter/hammer/events/give_hammer
execute as @e[type=minecraft:interaction,tag=hammer_interaction,nbt={attack:{}}] at @s run function test:skill/hunter/system/kill_weapon