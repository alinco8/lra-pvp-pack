#> test:skill/tuta_new/action/summon_block

say smn_blocka

summon armor_stand ~ ~ ~ {NoAI:1b,NoGravity:1b,Marker:true,Invisible:true,Tags:["tutablock","grass"],Passengers:[{id:"minecraft:shulker",Silent:1b,NoAI:1b,Tags:["tutashulker"],active_effects:[{id:"invisibility",amplifier:20,duration:2000,show_particles:0b},{id:"resistance",amplifier:2000,duration:2000,show_particles:0b}],Invulnerable:1b},{id:"block_display",block_state:{Name:"minecraft:moss_block"},Tags:["tutablockdisplay"],transformation:{translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}]}