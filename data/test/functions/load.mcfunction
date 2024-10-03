say スコアをリセットしました

scoreboard objectives add ID dummy
scoreboard objectives add Tick dummy
scoreboard objectives add Sneak custom:sneak_time


scoreboard objectives add Temp dummy

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
scoreboard objectives add death deathCount
#deahtスコア リセット
scoreboard players set @a death 0
#残り人数スコア 作成
scoreboard objectives add survivor dummy
#
scoreboard objectives add skillselect dummy

scoreboard objectives add battou dummy
#
scoreboard players set @a battou 0

scoreboard objectives add game_running dummy

scoreboard players set @a game_running 0

scoreboard objectives add Tick dummy

scoreboard objectives add itemuse minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set @a itemuse 0

scoreboard objectives add elytra minecraft.custom:aviate_one_cm

scoreboard players set @a elytra 0

scoreboard objectives add WallJump dummy
scoreboard objectives add DoubleJump dummy
scoreboard objectives add ElytraTick dummy

scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

scoreboard objectives add Const dummy

scoreboard players set $-1 Const -1
scoreboard players set $3 Const 3

scoreboard objectives add DJumpUsed dummy
scoreboard objectives add MaxDJump dummy
scoreboard objectives add WJumpUsed dummy
scoreboard objectives add WallSliding dummy
scoreboard objectives add Stamina dummy
scoreboard objectives add StaminaRestoreTick dummy

scoreboard players set @a WJumpUsed 0
scoreboard players set @a MaxDJump 1
scoreboard players set @a DJumpUsed 0
scoreboard players set @a WallSliding 0
scoreboard players set @a Stamina 100
scoreboard players set @a StaminaRestoreTick 0

team add DisablePvP
team modify DisablePvP friendlyFire false