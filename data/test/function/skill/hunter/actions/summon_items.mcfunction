summon item_display ^0.75 ^ ^2 {\
item:{id:"diamond_axe",count:1,components:{custom_data:{weapon_type:"hammer"}}},\
Tags:["New"],\
Passengers:[{id:"interaction",width:.7, Tags:["HunterItemHammerInteraction"]}],\
transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.5f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}\
}
summon item_display ^-0.75 ^ ^2 {\
item:{id:"netherite_sword",count:1,components:{custom_data:{weapon_type:"scythe"}}},\
Tags:["New"],\
Passengers:[{id:"interaction",width:.7, Tags:["HunterItemScytheInteraction"]}],\
transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.5f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}\
}

tag @s add Temp

execute store result score $Temp ID run random value 1..

execute as @e[tag=New] at @s facing entity @a[tag=Temp,limit=1] eyes run tp @s ~ ~-.5 ~ ~ ~
execute as @e[tag=New] at @s store result score @s ID run scoreboard players get $Temp ID

tag @e[tag=New] remove New
tag @s remove Temp
