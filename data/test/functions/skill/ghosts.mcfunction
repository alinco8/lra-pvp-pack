#> test:skillghosts

#透明化
effect give @a[scores={use=1..,cooltime=0},tag=ghosts] invisibility 4 200 true
#クールタイム
scoreboard players set @a[scores={use=1..,cooltime=0},tag=ghosts] cooltime 280

scoreboard players set @a[scores={use=1..},tag=ghosts] use 0