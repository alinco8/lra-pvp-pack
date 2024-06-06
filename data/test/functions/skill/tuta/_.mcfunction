#> test:skill/tuta/_

#スキル使用で種矢give
give @a[tag=tuta,scores={use=1}] tipped_arrow{display:{Name:'[{"text":"蔓弾"}]',Lore:['[{"text":"弾の軌道どうりに成長するつるの種"}]']},CustomPotionColor:30483,tuta_arrow:1b} 1

#スキル使用タグを与える 問題あり
#tag @a[tag=tuta,nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{display:{Name:'{"text":"蔓弾"}'}}}]}] add tutause

#種矢のタグ付け
tag @e[type=arrow,nbt={item:{tag:{tuta_arrow:1b}}}] add tutaya

#矢がIDを持ってなかったら付与
execute as @e[tag=tutaya] unless score @s id matches 1..1000 store result score @s id run random value 1..1000

execute as @e[tag=tutaya,nbt={life:0s}] at @s positioned ~ ~ ~ unless entity @e[tag=tuta_pos,distance=..0.3] run summon armor_stand ~ ~ ~ {NoAI:1b,Tags:["tuta_pos"],NoGravity:1b,Invisible:1b,Marker:1b}

execute as @e[tag=tutaya] at @s positioned ~ ~ ~ store result score @e[tag=tuta_pos,limit=1,sort=nearest] id run scoreboard players get @s id

#アマスタscore付与 -2
execute as @e[tag=tutaya,nbt={life:0s}] at @s positioned ~ ~ ~ run scoreboard players set @e[tag=tuta_pos,limit=1,sort=nearest] tutatime -2
#つたが枯れるまでの時間 tutatime付与
execute as @e[tag=tutaya,nbt={life:1s}] at @s positioned ~ ~ ~ run scoreboard players set @e[tag=tuta_pos,limit=1,sort=nearest] tutatime 300
#scoreを順番に30にset 同じIDスコアを持つ記録エンティティに300のtutatimeを付与できない
execute as @e[tag=tuta_pos,scores={tutatime=299}] at @s run function test:skill/tuta/tutatime
# execute as @e[tag=tuta_pos,scores={tutatime=297..300}] at @s if score @s id = @e[limit=1,sort=nearest,tag=tuta_pos,scores={tutatime=-2}] id run scoreboard players set @e[tag=tuta_pos,scores={tutatime=-2},distance=..3.5] tutatime 300
#シュルカー乗せたアマスタ召喚
execute as @e[tag=tuta_pos,scores={tutatime=298}] at @s positioned ~ ~-1.5 ~ unless entity @e[tag=tutablock,distance=..0.5] run summon armor_stand ~ ~ ~ {NoAI:1b,Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tutablock","grass"],Passengers:[{id:"minecraft:shulker",Silent:1b,NoAI:1b,Tags:["tutashulker","grass"],active_effects:[{id:"invisibility",amplifier:20,duration:2000,show_particles:0b},{id:"resistance",amplifier:2000,duration:2000,show_particles:0b}],Invulnerable:1b},{id:"block_display",block_state:{Name:"minecraft:moss_block"},Tags:["tutablockdisplay"],transformation:{translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}]}


execute as @e[tag=tuta_pos] at @s positioned ~ ~-1.5 ~ store result score @e[tag=tutashulker,limit=1,sort=nearest] id run scoreboard players get @s id

execute as @e[tag=tuta_pos] at @s positioned ~ ~-1.5 ~ store result score @e[tag=tutablock,limit=1,sort=nearest] id run scoreboard players get @s id

#つた発生のパーティクル
execute as @e[tag=tuta_pos,scores={tutatime=297..300}] at @s positioned ~ ~ ~ run particle dust 0 0.467 0.078 1 ~ ~-1 ~ 0.5 0.5 0.5 0 10 normal @a


#範囲外に出たプレーヤーの浮遊削除
execute as @e[tag=tutashulker] at @s run effect clear @a[distance=2.3..4] levitation

# execute as @e[tag=tutashulker] at @s positioned ~ ~-0.7 ~ run effect give @a[dx=0] levitation 1 1 true
# #シュルカーの近くにいるtutaタグ持ちに浮遊
# execute as @e[tag=tutashulker] at @s positioned ~ ~-0.5 ~ run effect give @a[distance=..1.5] levitation 1 1 true
# #シュルカーの上に乗ったら浮遊クリア
# execute as @e[tag=tutashulker] at @s positioned ~ ~3.5 ~ run effect clear @a[dy=1] levitation

execute as @e[tag=tutashulker] at @s positioned ~-0.6 ~ ~-0.6 run effect give @a[dx=0.2,dy=0,dz=0.2] levitation 1 1 true
execute as @e[tag=tutashulker] at @s positioned ~ ~3.5 ~ run effect clear @a[dy=1] levitation


# ------
execute as @e[tag=tuta_pos,scores={tutatime=0}] at @s run function test:skill/tuta/kill_same_id
# execute as @e[tag=tutablock] at @s positioned ~ ~1.5 ~ if score @s id = @e[tag=tuta_pos,scores={tutatime=0},limit=1,sort=nearest] id run kill @s

# execute as @e[tag=tutashulker] at @s positioned ~ ~1 ~ if score @s id = @e[tag=tuta_pos,scores={tutatime=0},limit=1,sort=nearest] id run tp @s ~ -100 ~
# execute as @e[tag=tuta_pos,scores={tutatime=0}] at @s positioned ~ ~ ~ run kill @e[tag=tutashulker,limit=1,sort=nearest,distance=..2]

# execute as @e[tag=tutablockdisplay] at @s positioned ~-0.5 ~ ~-0.5 unless entity @e[tag=tutashulker,dx=0] run kill @s

# execute as @e[tag=tuta_pos,scores={tutatime=0}] at @s positioned ~ ~ ~ run particle dust 0.345 0.192 0.016 1 ~ ~-1 ~ 0.8 0.8 0.8 0.01 50 normal @a

# execute as @e[tag=tuta_pos,scores={tutatime=0}] at @s positioned ~ ~ ~ unless entity @e[distance=..2,tag=tutashulker] run kill @s
# ------

kill @e[tag=tutaya,nbt={life:3s}]

#useスコアset0
scoreboard players set @a[tag=tuta,scores={use=1}] use 0