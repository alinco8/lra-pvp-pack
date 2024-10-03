execute if predicate test:on_ground run return run scoreboard players set @s WallSliding 0
execute if score @s WallSliding matches 0 if score @s Sneak matches 1 rotated ~ 0 anchored eyes unless block ^ ^ ^1 air run return run scoreboard players set @s WallSliding 1
execute if score @s WallSliding matches 1 if score @s Sneak matches 1 if function test:parkour/conditions/block_nearby run return run scoreboard players set @s WallSliding 1
return run scoreboard players set @s WallSliding 0