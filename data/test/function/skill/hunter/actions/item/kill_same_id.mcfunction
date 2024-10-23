tag @s add Temp

execute as @e[type=item_display] at @s if score @s ID = @e[tag=Temp,limit=1] ID run function test:skill/tuta/actions/destroy_recursive

tag @s remove Temp
