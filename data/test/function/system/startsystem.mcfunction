#> Selector: Server

team leave @a

tag @e[tag=UsedSpawnPoint] remove UsedSpawnPoint

execute as @a at @s run function test:system/init_player
