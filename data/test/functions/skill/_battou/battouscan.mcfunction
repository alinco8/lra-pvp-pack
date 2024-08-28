scoreboard players set @s battou 0

execute as @s[scores={battou=0},tag=!battoutp] at @s positioned ^ ^ ^1 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 1
execute as @s[scores={battou=0},tag=!battoutp] at @s positioned ^ ^ ^1 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=1},tag=!battoutp] at @s positioned ^ ^ ^2 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 2
execute as @s[scores={battou=1},tag=!battoutp] at @s positioned ^ ^ ^2 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=2},tag=!battoutp] at @s positioned ^ ^ ^3 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 3
execute as @s[scores={battou=2},tag=!battoutp] at @s positioned ^ ^ ^3 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=3},tag=!battoutp] at @s positioned ^ ^ ^4 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 4
execute as @s[scores={battou=3},tag=!battoutp] at @s positioned ^ ^ ^4 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=4},tag=!battoutp] at @s positioned ^ ^ ^5 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 5
execute as @s[scores={battou=4},tag=!battoutp] at @s positioned ^ ^ ^5 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=5},tag=!battoutp] at @s positioned ^ ^ ^6 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 6
execute as @s[scores={battou=5},tag=!battoutp] at @s positioned ^ ^ ^6 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=6},tag=!battoutp] at @s positioned ^ ^ ^7 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 7
execute as @s[scores={battou=6},tag=!battoutp] at @s positioned ^ ^ ^7 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=7},tag=!battoutp] at @s positioned ^ ^ ^8 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 8
execute as @s[scores={battou=7},tag=!battoutp] at @s positioned ^ ^ ^8 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=8},tag=!battoutp] at @s positioned ^ ^ ^9 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 9
execute as @s[scores={battou=8},tag=!battoutp] at @s positioned ^ ^ ^9 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp

execute as @s[scores={battou=9},tag=!battoutp] at @s positioned ^ ^ ^10 unless entity @e[tag=battoukyori,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s battou 10
execute as @s[scores={battou=9},tag=!battoutp] at @s positioned ^ ^ ^10 if score @s id = @e[tag=battoukyori,limit=1,sort=nearest,dx=0,dy=0,dz=0] id run tag @s add battoutp
