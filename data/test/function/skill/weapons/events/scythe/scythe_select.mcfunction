tag @s remove weapon_select
tag @s add scythe_select

give @s carrot_on_a_stick[item_model=scythe]
execute as @e[type=interaction,nbt={attack:{}}] run kill @s

# 進捗をリセットして繰り返し検知可能にする
advancement revoke @s only test:attack_decide