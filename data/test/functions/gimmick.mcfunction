#> test:gimmick

#ステージギミック 浮遊
execute as @e[tag=gimmicklevitation] at @s positioned ~ ~ ~ run effect give @a[dx=0] levitation 7 4
execute as @e[tag=gimmicklevitation] at @s run particle poof ~ ~ ~ 0.3 0.3 0.3 0.015 5 force @a
#ステージギミック エフェクトクリア
execute as @e[tag=gimmickclear] at @s positioned ~ ~-500 ~ run effect clear @a[dx=0]
execute as @e[tag=gimmickclear] at @s run particle ash ~ ~-499.5 ~ 0.3 0.3 0.3 0.1 5 force @a
#危険エリア
execute as @e[tag=gimmickdamage] at @s positioned ~ ~-500 ~ run effect give @a[dx=0] instant_damage
execute as @e[tag=gimmickdamage] at @s positioned ~ ~-499 ~ run title @a[dx=0] title "te"