title @a title "3"
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

tag @e[tag=UsedSpawn] remove UsedSpawn
execute as @a at @s run function test:system/game_in_progress/events/player/on_before_start