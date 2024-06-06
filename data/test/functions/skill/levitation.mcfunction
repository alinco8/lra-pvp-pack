#> test:skilllevitation

#浮遊
effect give @a[scores={use=1..,cooltime=0},tag=levitation] levitation 2 4 true
#クールタイム
scoreboard players set @a[scores={use=1..,cooltime=0},tag=levitation] cooltime 400

scoreboard players set @a[scores={use=1..},tag=levitation] use 0