#> test:skilllevitation

#浮遊
effect give @a[scores={use=1..,cooltime=0},tag=levitation] levitation 2 5 true
execute as @a[scores={use=1..,cooltime=0},tag=levitation] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.3 100 normal @a
#クールタイム
scoreboard players set @a[scores={use=1..,cooltime=0},tag=levitation] cooltime 400

scoreboard players set @a[scores={use=1..},tag=levitation] use 0