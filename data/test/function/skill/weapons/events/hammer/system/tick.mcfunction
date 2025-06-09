function test:skill/weapons/events/hammer/system/scatter_pos

scoreboard players add @s Weapon_skill_use 1
execute as @s[scores={Weapon_skill_use=2..}] run function test:skill/weapons/events/hammer/system/cos
