#> test:skill/accelaration

#超加速
effect give @a[scores={use=1..,cooltime=0},tag=acceleration] speed 1 100 true
#クールタイム
scoreboard players set @a[scores={use=1..,cooltime=0},tag=acceleration] cooltime 200
#ステータスクリア
effect clear @a[scores={use=1..,cooltime=197},tag=acceleration] speed

scoreboard players set @a[scores={use=1..,cooltime=1},tag=acceleration] use 0
