#> test:skillwater

#ダメージをスコアremovedamageで検知しスコアactiontimeをカウントアップ
execute as @a[tag=water,scores={removedamage=1..}] run scoreboard players set @s actiontime 10

scoreboard players set @a[tag=water,scores={actiontime=10}] removedamage 0
#actiontimeスコアが1~2の間にuseスコアが1になった場合タグ水スキル発動[wateractivate]を追加
execute as @a[tag=water,scores={actiontime=9..10,use=1}] at @s run tag @s add wateractivate
#スキルが発動したらスノウゴーレムを召喚
execute as @a[tag=wateractivate,scores={use=1}] at @s run summon snow_golem ~ ~ ~ {NoAI:1b}
#スノウゴーレムに攻撃したプレーヤーにスタンを与える
execute as @a[tag=!wateractivate,scores={snowgolemkill=1..}] run function test:effectstan
#発動を成功させたプレーヤーにスコアeftを10与える
scoreboard players set @a[tag=wateractivate,scores={use=1}] effecttime 10
#攻撃力強化
effect give @a[tag=wateractivate,scores={use=1}] saturation 3 0 true
#3.5ハート回復
effect give @a[tag=wateractivate,scores={use=1}] instant_health 1 1
#スピードup
effect give @a[tag=wateractivate,scores={use=1}] speed 1 22 true
#スコアeft=8 スピードupクリア
execute as @a[scores={effecttime=8}] run effect clear @s speed
#スコアsnowgolemkill クリア
scoreboard players set @a[scores={snowgolemkill=1..}] snowgolemkill 0
#タグwateractivate取り消し
tag @a[tag=wateractivate] remove wateractivate
#useスコア クリア
scoreboard players set @a[tag=water,scores={use=1..}] use 0
