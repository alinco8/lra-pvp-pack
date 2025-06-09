tag @s remove weapon_select
tag @s add hammer_select

give @s carrot_on_a_stick[item_model=hammer]
execute as @e[type=interaction,nbt={interaction:{}}] run kill @s

# 進捗をリセットして繰り返し検知可能にする
advancement revoke @s only test:interact_weapons