function test:parkour/actions/cancel_elytra

execute if function test:parkour/actions/conditions/can_wjump run return run function test:parkour/events/on_wjump
execute if score @s DJumpUsed matches 0 run return run function test:parkour/events/on_djump
