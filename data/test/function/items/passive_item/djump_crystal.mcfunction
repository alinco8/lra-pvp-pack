execute as @s unless items entity @s hotbar.* diamond run scoreboard players set @s MaxDJump 0
execute as @s if items entity @s hotbar.* diamond[count=1] run scoreboard players set @s MaxDJump 1
execute as @s if items entity @s hotbar.* diamond[count=2] run scoreboard players set @s MaxDJump 2
execute as @s if items entity @s hotbar.* diamond[count=3] run scoreboard players set @s MaxDJump 3