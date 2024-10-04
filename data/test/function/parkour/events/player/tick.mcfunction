data merge entity @s {abilities:{mayfly:1b,flySpeed:0.0f}}

execute if function test:parkour/conditions/can_wall_slide run function test:parkour/events/player/on_wslide
execute if score @s StaminaRestoreTick matches 0 if score @s Stamina matches ..99 run scoreboard players add @s Stamina 1

execute if predicate test:is_flying run function test:parkour/events/player/on_fly
execute if predicate test:on_ground run function test:parkour/events/player/on_land

function test:parkour/actions/show_stamina