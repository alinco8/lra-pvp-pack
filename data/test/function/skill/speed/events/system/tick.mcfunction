#execute as @a[tag=speed,tag=!speed_gear_one,scores={Use=1}] run scoreboard players set @s EffectTime 250

execute as @a[tag=speed,tag=!speed_gear_one,scores={EffectTime=20..,Use=1}] at @s run function test:skill/speed/events/player/change_gear_one
execute as @a[tag=speed_gear_one,tag=!speed_gear_two,scores={EffectTime=1..}] run function test:skill/speed/events/player/gear_one


execute as @a[tag=speed_gear_one,tag=!speed_gear_two,scores={EffectTime=120..,Use=1}] at @s run function test:skill/speed/events/player/change_gear_two
execute as @a[tag=speed_gear_one,tag=speed_gear_two,tag=!speed_gear_three,scores={EffectTime=1..}] run function test:skill/speed/events/player/gear_two

execute as @a[tag=speed_gear_one,tag=speed_gear_two,tag=!speed_gear_three,scores={EffectTime=60..,Use=1}] at @s run function test:skill/speed/events/player/change_gear_three
execute as @a[tag=speed_gear_one,tag=speed_gear_two,tag=speed_gear_three,scores={EffectTime=1..}] run function test:skill/speed/events/player/gear_three

execute as @a[tag=speed,scores={EffectTime=0}] at @s run function test:skill/speed/events/system/end

execute as @a[tag=speed,tag=!speed_gear_one,predicate=test:is_sprinting] at @s run function test:skill/speed/events/system/charging