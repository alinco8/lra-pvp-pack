summon armor_stand ~ ~ ~ {Tags:["SmokeGrenadeRider","New"],Marker:1b,Invisible:1b,Invulnerable:1b}

ride @e[tag=SmokeGrenadeRider,tag=New,limit=1] mount @s

tag @e[tag=New] remove New
tag @s add Init