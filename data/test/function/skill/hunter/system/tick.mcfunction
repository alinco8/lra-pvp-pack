execute as @a[tag=hunter,scores={Use=1,EffectTime=0}] at @s positioned ~ ~1 ~ run function test:skill/hunter/system/weapon

function test:skill/hunter/hammer/actions/hammer_interaction
function test:skill/hunter/scythe/actions/scythe_interaction

execute as @a[tag=hunter,scores={Use=1}] if score @s EffectTime matches 1.. at @s positioned ~ ~-2 ~ run function test:skill/hunter/scythe/events/wall_pos

execute as @e[tag=wallpos,scores={EffectTime=1}] run function test:skill/hunter/scythe/actions/kill_wall

execute as @a[tag=hunter,scores={EffectTime=1}] run function test:skill/hunter/scythe/actions/notime