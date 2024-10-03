data merge entity @s {abilities:{flying:false}}

execute if function test:parkour/conditions/can_wjump run return run function test:parkour/events/on_wjump
execute if score @s DJumpUsed < @s MaxDJump run return run function test:parkour/events/on_djump

execute rotated ~ 0 unless block ^ ^1 ^ air run return fail