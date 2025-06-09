# エンティティの現在位置を取得
execute store result score @s Scatter_x run data get entity @s Pos[0] 100
execute store result score @s Scatter_y run data get entity @s Pos[1] 100
execute store result score @s Scatter_z run data get entity @s Pos[2] 100

# armor_standの位置を取得
execute as @e[type=armor_stand,tag=Condense,limit=1,sort=nearest] at @s store result score #center_x Scatter_x run data get entity @s Pos[0] 100
execute as @e[type=armor_stand,tag=Condense,limit=1,sort=nearest] at @s store result score #center_y Scatter_y run data get entity @s Pos[1] 100
execute as @e[type=armor_stand,tag=Condense,limit=1,sort=nearest] at @s store result score #center_z Scatter_z run data get entity @s Pos[2] 100

# 差を計算（エンティティの位置 - armor_standの位置）
scoreboard players operation @s Scatter_x -= #center_x Scatter_x
scoreboard players operation @s Scatter_y -= #center_y Scatter_y
scoreboard players operation @s Scatter_z -= #center_z Scatter_z

# Motionに適用（力を加える方向を正規化し、スケールを調整）
execute store result entity @s Motion[0] double -0.0025 run scoreboard players get @s Scatter_x
execute store result entity @s Motion[1] double -0.0025 run scoreboard players get @s Scatter_y
execute store result entity @s Motion[2] double -0.0025 run scoreboard players get @s Scatter_z