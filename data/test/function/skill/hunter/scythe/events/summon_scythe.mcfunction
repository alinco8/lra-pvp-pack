#selcter = player

summon item_display ~ ~0.5 ~ {item:{id:"minecraft:netherite_sword",Count:1b},Tags:[weapon,scythe]}
summon interaction ~ ~ ~ {Tags:[scythe_interaction,weapon_interaction,scythe]}
execute as @e[tag=scythe] at @s rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=scythe] at @s rotated as @a[tag=hunter,scores={use=1}] run tp @s ~ ~ ~ ~ ~
