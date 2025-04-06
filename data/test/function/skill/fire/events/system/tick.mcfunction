execute as @e[type=arrow,nbt={item:{components:{"minecraft:custom_data":{fire_arrow:1b}}}}] at @s run function test:skill/fire/events/arrow/tick
execute as @e[tag=FireArrowRider] at @s run function test:skill/fire/events/rider/tick

execute as @a[tag=fire] if entity @s[nbt={Inventory:[{id:arrow,count:1,components:{"minecraft:custom_data":{fire_arrow:1b}}}]}] run scoreboard players set @s CoolTime 300

execute as @a[tag=fire,scores={Use=1..}] at @s run function test:skill/fire/events/player/on_cos