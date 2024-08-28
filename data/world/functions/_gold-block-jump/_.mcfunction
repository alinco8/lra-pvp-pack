#> test:gold-block-jump/_

tag @a[nbt={OnGround:1b}] remove Levitation

execute as @a[tag=Levitation] at @s run function test:gold-block-jump/event/is_flying
execute as @a[tag=Falling] at @s run function test:gold-block-jump/event/is_falling
execute as @a[tag=Falling,nbt={OnGround:1b}] at @s run function test:gold-block-jump/event/on_landing
execute as @a[nbt={OnGround:0b},tag=CanLevitation] at @s run function test:gold-block-jump/event/on_jump

tag @a remove CanLevitation
tag @a[nbt={OnGround:1b}] remove Falling

execute as @a[nbt={OnGround:1b},scores={Sneaking=0}] at @s if block ~ ~-0.1 ~ gold_block run tag @s add CanLevitation