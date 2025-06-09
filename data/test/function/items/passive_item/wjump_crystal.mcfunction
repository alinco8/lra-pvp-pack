execute as @s unless items entity @s hotbar.* emerald run scoreboard players set @s MaxWJump 0
execute as @s if items entity @s hotbar.* emerald[count=1] run scoreboard players set @s MaxWJump 1
execute as @s if items entity @s hotbar.* emerald[count=2] run scoreboard players set @s MaxWJump 2
execute as @s if items entity @s hotbar.* emerald[count=3] run scoreboard players set @s MaxWJump 3