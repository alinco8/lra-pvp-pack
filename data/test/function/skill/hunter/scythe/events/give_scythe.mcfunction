give @s carrot_on_a_stick[minecraft:attribute_modifiers=[{type: generic.attack_damage , amount: 10, id: scythe_damege, slot: mainhand, operation: add_multiplied_total}, {type:"generic.attack_speed" , amount:-0.8 , id: scythe_sp , slot: "mainhand" , operation: "add_multiplied_total"}]]
playsound minecraft:entity.vex.death master @a ~ ~ ~ 10 1 1
scoreboard players set @s EffectTime 600

execute as @e[type=item_display,tag=scythe] at @s positioned ^1.5 ^ ^ run kill @e[distance=..0.8,tag=hammer_interaction,limit=1]
execute as @e[type=item_display,tag=scythe] at @s positioned ^1.5 ^ ^ run kill @e[distance=..0.8,tag=hammer,limit=1]