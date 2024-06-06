execute as @e[tag=skillselect] at @s unless entity @e[type=villager,tag=skillselectclick,distance=..3] run summon villager ~-1.5 ~0.5 ~0.8 {Tags:[skillselectclick,],NoAI:1b,Silent:1b}
effect give @e[tag=skillselectclick] invisibility 100000 255 true
execute as @e[tag=skillselectclick] at @s unless entity @e[tag=skillselectswitch] run summon block_display ~ ~2 ~ {block_state:{Name:"pearlescent_froglight"},Tags:[skillselectswitch]}
execute as @e[tag=skillselectswitch] at @e[tag=skillselectclick] run tp @s ~-0.3 ~1.5 ~-0.3
execute as @e[tag=skillselectswitch] at @s run data modify entity @s transformation.scale set value [0.6f,0.45f,0.6f]
execute as @e[tag=skillselectitem] at @s run tp @s ~ ~ ~ ~2.5 ~

execute as @e[tag=skillselectswitch] at @s if entity @a[scores={click=1}] run data modify entity @s transformation.scale set value [0.6f,0.25f,0.6f]
execute as @a[scores={click=1}] run scoreboard players add @e[tag=skillselect,limit=1,sort=nearest] skillselect 1
execute as @a[scores={click=1}] run kill @e[tag=nowdisplay,limit=3,sort=nearest]
execute as @e[scores={click=1}] at @e[tag=skillselect] run particle end_rod ~ ~1.3 ~ 1.5 1 1 0 30 force @a
scoreboard players set @a[scores={click=1}] click 0


scoreboard players set @e[tag=skillselect,scores={skillselect=9}] skillselect 1

#加速 ディスプレイ表示
execute as @e[tag=skillselect,scores={skillselect=1}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:blue_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=1}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"speed"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=1}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}
#浮遊 ディスプレイ表示
execute as @e[tag=skillselect,scores={skillselect=2}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:light_gray_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=2}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"levitation"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=2}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}
#透明化 ディスプレイ表示
execute as @e[tag=skillselect,scores={skillselect=3}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:white_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=3}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"invisibility"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=3}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}

execute as @e[tag=skillselect,scores={skillselect=4}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:yellow_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=4}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"acceleration"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=4}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}

execute as @e[tag=skillselect,scores={skillselect=5}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:red_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=5}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"scythe summon"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=5}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}

execute as @e[tag=skillselect,scores={skillselect=6}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:orange_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=6}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"fire"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=6}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}

execute as @e[tag=skillselect,scores={skillselect=7}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:lime_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=7}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"ive"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=7}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}

execute as @e[tag=skillselect,scores={skillselect=8}] at @s positioned ~ ~3 ~ unless entity @e[distance=..3,type=item_display] run summon item_display ~ ~ ~ {item:{id:"minecraft:cyan_dye",Count:1b},Tags:[skillselectitem,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=8}] at @s positioned ~ ~2.6 ~ unless entity @e[distance=..3,tag=skillselectname] run summon text_display ^1.3 ^ ^ {text:'{"text":"water"}',Tags:[skillselectname,nowdisplay]}
execute as @e[tag=skillselect,scores={skillselect=8}] at @s positioned ~ ~2.35 ~ unless entity @e[distance=..3,tag=skillselectcooltime] run summon text_display ^1.3 ^ ^ {text:'{"text":"cooltime=0"}',Tags:[skillselectcooltime,nowdisplay]}