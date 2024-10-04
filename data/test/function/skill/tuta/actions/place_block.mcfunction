tag @s add Chain

summon block_display ~ ~ ~ {Tags:["New","TutaDisplay"],Passengers:[{id:"shulker",NoAI:1b,Silent:1b}],block_state:{Name:"moss_block"},transformation:{left_rotation:[1, 0, 0, 0],right_rotation:[1, 0, 0, 0],translation:[-0.51f, -0.01f, -0.51f],scale:[1.02, 1.02, 1.02]}}

scoreboard players set @e[type=block_display,tag=New] Tick 200

tag @e[type=block_display,tag=New] remove New