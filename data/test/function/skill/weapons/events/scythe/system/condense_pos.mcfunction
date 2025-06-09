#execute if predicate test:on_ground run summon armor_stand ^ ^ ^-12.5 {Tags:["Condense","weapon_sub_skill","Condense_new"],NoGravity:1b}
summon armor_stand ^ ^ ^6.8 {Tags:["Condense","weapon_sub_skill","Condense_new"],NoGravity:1b}
scoreboard players set @e[tag=Condense_new] EffectTime 10
scoreboard players add @s Weapon_skill_use 1
execute as @s[scores={Weapon_skill_use=2}] run function test:skill/weapons/events/scythe/system/cos