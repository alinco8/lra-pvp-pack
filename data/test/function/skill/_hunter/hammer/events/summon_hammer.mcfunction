# selecter = player

summon item_display ~ ~0.5 ~ {item:{id:"minecraft:diamond_axe",Count:1b},Tags:[weapon,hammer]}
summon interaction ~ ~ ~ {Tags:[hammer_interaction,weapon_interaction,hammer]}
execute as @e[tag=hammer] at @s rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=hammer] at @s rotated as @a[tag=hunter,scores={use=1}] run tp @s ~ ~ ~ ~ ~