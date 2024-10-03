scoreboard players set @a[tag=battou,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b}]}] effecttime 1

execute as @a[tag=battou] unless data entity @s Inventory[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b}] run scoreboard players set @s effecttime 0