function test:skill/neon
function test:skill/levitation
function test:skill/ghosts
function test:skill/penetrate/events/tick
function test:skill/hunter
function test:skill/water/events/tick
function test:skill/battou/battounew
function test:skill/hunter/scythe/events/tike

#-----==== Penetrate ====-----
execute as @a[tag=penetrate] at @s run function test:skill/penetrate/events/tick

#execute at @e[tag=penetrate_point,scores={actiontime=-1}] unless block ^ ^ ^0.1 air as @a[limit=1,sort=nearest] run function test:skill/penetrate/events/return_player

scoreboard players set @a[tag=penetrate,scores={use=1..}] use 0

#-----==== Fire ====-----
execute as @e[type=arrow,nbt={item:{tag:{fire_arrow:1b}}}] at @s run function test:skill/fire/events/arrow/tick

#-----==== Tuta ====-----
execute as @e[type=arrow,nbt={item:{tag:{tuta_arrow:1b}}}] at @s run function test:skill/tuta/events/tick
execute as @e[tag=Chain,tag=!Chained] at @s run function test:skill/tuta/actions/chain
execute as @e[tag=TutaDisplay,scores={Tick=0}] at @s run function test:skill/tuta/events/on_destroy

execute as @e[tag=TutaDisplay] at @s positioned ~-0.5 ~ ~-0.5 run effect clear @a[dx=0,dy=1,dz=0] levitation
execute as @e[tag=TutaDisplay] at @s positioned ~-0.6 ~ ~-0.6 run effect give @a[dx=0.2,dy=-0.2,dz=0.2,scores={Sneak=0}] levitation 1 1 true

execute as @e[tag=TutaPos,tag=!Reserved] at @s unless function test:skill/tuta/actions/detect_same_score_arrow run kill @s

execute as @a[tag=tuta,scores={use=1..}] at @s run function test:skill/tuta/events/on_cos