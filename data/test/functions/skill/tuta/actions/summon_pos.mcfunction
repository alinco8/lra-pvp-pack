summon armor_stand ~ ~ ~ {Tags:["TutaPos","New"],Invisible:1b,Marker:1b}

execute store result score @e[tag=TutaPos,tag=New] ID run scoreboard players get @s ID

tag @e[tag=TutaPos,tag=New] remove New