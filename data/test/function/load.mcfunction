# 自動減算スコア (0~)
scoreboard objectives add Tick dummy

# しゃがみ中(0~1)
scoreboard objectives add Sneak custom:sneak_time

# 一時
scoreboard objectives add Temp dummy

# ID
scoreboard objectives add ID dummy

# 人参棒の使用 (0~1)
scoreboard objectives add Use minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @a Use 0

# CoolTime (0=)
scoreboard objectives add CoolTime dummy
scoreboard players set @a CoolTime 0

# ツタが枯れるまでの時間
scoreboard objectives add TutaTime dummy

# 動作してからの追加時間
# scoreboard objectives add ActionTime dummy
# scoreboard players set @a ActionTime -1

# どれだけの時間効果を持たせるか
scoreboard objectives add EffectTime dummy
scoreboard players set @a EffectTime 0

# スノーゴーレムを殺した数
scoreboard objectives add SnowGolemKill minecraft.killed:minecraft.snow_golem
scoreboard players set @a SnowGolemKill 0

# デバッグ用
scoreboard objectives add Test dummy

# 燃焼ダメージの継続時間
scoreboard objectives add FireDamage dummy
scoreboard players set @a FireDamage 0

# ヴェックスを殺した数
scoreboard objectives add VexKill minecraft.killed:minecraft.vex
scoreboard players set @a VexKill 0

# 地面を走っているか(0~1) なくてもいいかも
scoreboard objectives add Running minecraft.custom:minecraft.sprint_one_cm
scoreboard players set @a Running 0

# 連続で走ってるtick数
scoreboard objectives add RunCount dummy
scoreboard players set @a RunCount 0

# 死亡してるかどうか
scoreboard objectives add Death deathCount

# 残り人数スコア
scoreboard objectives add SurvivorCount dummy

# スキルセレクターで選択中のスキル
scoreboard objectives add SkillSelect dummy

# 抜刀
scoreboard objectives add Battou dummy
scoreboard players set @a Battou 0

# ゲームが実行中かどうか
scoreboard objectives add GameRunning dummy


# XYZ保存用
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

#weaponsのサブスキル関係_xyz
scoreboard objectives add Scatter_x dummy
scoreboard objectives add Scatter_y dummy
scoreboard objectives add Scatter_z dummy

scoreboard objectives add Weapon_skill_use dummy
scoreboard players set @a Weapon_skill_use 0

# 定数
scoreboard objectives add Const dummy

# DoubleJump回数
scoreboard objectives add DJumpUsed dummy
scoreboard players set @a DJumpUsed 0

# 最大DoubleJump回数
scoreboard objectives add MaxDJump dummy
scoreboard players set @a MaxDJump 0

# WallJump回数
scoreboard objectives add WJumpUsed dummy
scoreboard players set @a WJumpUsed 0

# WallJump有無
scoreboard objectives add MaxWJump dummy
scoreboard players set @a MaxWJump 0

# WallSlide中 (0~1)
scoreboard objectives add WallSliding dummy
scoreboard players set @a WallSliding 0

# スタミナ
scoreboard objectives add Stamina dummy
scoreboard players set @a Stamina 100

# スタミナが回復し始めるまでのtick数
scoreboard objectives add StaminaRestoreTick dummy
scoreboard players set @a StaminaRestoreTick 0

# 足跡の発生間隔
scoreboard objectives add FootPrints dummy
scoreboard players set @a FootPrints 40

## 観戦、ロビー
team add DisablePvP
team modify DisablePvP friendlyFire false

## PvP中
team add PvP
team modify PvP nametagVisibility never


tellraw @a "Datapack Reloaded! vr test"