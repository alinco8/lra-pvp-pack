say スコアリロードしました

scoreboard objectives add id dummy
#にんじん棒の右クリ用スコア作成 use
scoreboard objectives add use minecraft.used:minecraft.carrot_on_a_stick
#useスコア リセット
scoreboard players set @a use 0
#クールタイムスコア 作成
scoreboard objectives add cooltime dummy
#クールタイムスコア リセット
scoreboard players set @a cooltime 0
#スキルつたのつたブロックができるまでの時間用スコア 作成
scoreboard objectives add tutatime dummy
#受けたダメージスコア 作成 removedamage
scoreboard objectives add removedamage minecraft.custom:damage_taken
#removedamageスコア リセット
scoreboard players set @a removedamage 0
#動作してからの追加時間 トリガー用スコア 作成
scoreboard objectives add actiontime dummy
#actiontimeスコア リセット
scoreboard players set @a actiontime -1
#どれだけの時間効果を持たせるか
scoreboard objectives add effecttime dummy
#effecttime リセット
scoreboard players set @a effecttime 0
#スノウゴーレムを殺した数スコア 作成
scoreboard objectives add snowgolemkill minecraft.killed:minecraft.snow_golem 
#snowgolemkillスコア リセット
scoreboard players set @a snowgolemkill 0
#デバッグ用スコア作成
scoreboard objectives add test dummy
#燃焼ダメージの継続時間スコア 作成
scoreboard objectives add firedamage dummy
#firedamageのスコア リセット
scoreboard players set @a firedamage 0
#ヴェックスを殺した数スコア 作成
scoreboard objectives add vexkill minecraft.killed:minecraft.vex 
#
scoreboard players set @a vexkill 0
#地面を走っている時増加するスコア 作成
scoreboard objectives add running minecraft.custom:minecraft.sprint_one_cm
#runスコア リセット
scoreboard players set @a running 0
#走っている時間
scoreboard objectives add runcount dummy
#runcountスコア リセット
scoreboard players set @a runcount 0
#デス数カウントスコア 作成
scoreboard objectives add deaht deathCount
#deahtスコア リセット
scoreboard players set @a deaht 0
#残り人数スコア 作成
scoreboard objectives add survivor dummy
#
scoreboard objectives add skillselect dummy
#
scoreboard objectives add click minecraft.custom:minecraft.talked_to_villager
#
scoreboard players set @a click 0