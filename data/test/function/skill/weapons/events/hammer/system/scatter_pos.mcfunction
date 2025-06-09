summon armor_stand ^ ^ ^3 {Tags:["Scatter","weapon_sub_skill","Scatter_new"]}
#execute anchored feet unless predicate test:on_ground run summon armor_stand ^ ^ ^-2.5 {Tags:["Scatter","weapon_sub_skill","Scatter_new"]}

scoreboard players set @e[tag=Scatter_new] EffectTime 3
tag @e[tag=Scatter_new] remove Scatter_new