execute as @e[tag=skillselectitem] at @s run tp @s ~ ~ ~ ~2.5 ~

# クリック
execute as @e[tag=skillselectswitch,scores={Tick=0}] as @e[tag=skillselectinteraction,limit=1,sort=nearest] run tag @s remove Down
execute as @e[tag=skillselectswitch,scores={Tick=1}] at @s run tp @s ~ ~0.22 ~
data remove entity @e[tag=skillselectinteraction,limit=1,sort=nearest,tag=Down] interaction
execute if data entity @e[tag=skillselectinteraction,limit=1,sort=nearest] interaction run function test:system/skillsystem/clicked

execute as @e[tag=skillselectdecideswitch,scores={Tick=0}] as @e[tag=skillselectdecideinteraction,limit=1,sort=nearest] run tag @s remove Down
execute as @e[tag=skillselectdecideswitch,scores={Tick=1}] at @s run tp @s ~ ~0.22 ~
data remove entity @e[tag=skillselectdecideinteraction,limit=1,sort=nearest,tag=Down] interaction
execute if data entity @e[tag=skillselectdecideinteraction,limit=1,sort=nearest] interaction run function test:system/skillsystem/decide_clicked