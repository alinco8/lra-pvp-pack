execute as @a[tag=penetrate,scores={use=1}] at @s unless block ^ ^ ^0.9 air run function test:skill/penetrate/events/summon_penetrate

execute as @e[tag=penetrate_point] at @s unless block ^ ^ ^0.1 air run function test:skill/penetrate/actions/move_point

execute at @e[tag=penetrate_point,scores={actiontime=-1}] if block ^ ^ ^0.1 air as @a[limit=1,sort=nearest] run function test:skill/penetrate/events/return_player

#execute at @e[tag=penetrate_point,scores={actiontime=-1}] unless block ^ ^ ^0.1 air as @a[limit=1,sort=nearest] run function test:skill/penetrate/events/return_player

scoreboard players set @a[tag=penetrate,scores={use=1..}] use 0