execute as @a[tag=weapon_select] run function test:skill/weapons/action/select_system

function test:skill/weapons/events/hammer/skill/tick
function test:skill/weapons/events/scythe/skill/tick

execute as @a[tag=hammer_select,scores={Use=1}] at @s run function test:skill/weapons/events/hammer/system/tick
execute as @a[tag=scythe_select,scores={Use=1}] at @s run function test:skill/weapons/events/scythe/system/tick

kill @e[tag=weapon_sub_skill,scores={EffectTime=0}]