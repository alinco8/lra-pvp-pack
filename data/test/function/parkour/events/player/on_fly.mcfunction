data merge entity @s {abilities:{flying:false}}

execute if function test:parkour/conditions/can_wjump if score @s WJumpUsed < @s MaxWJump run return run function test:parkour/events/player/on_wjump
execute if score @s DJumpUsed < @s MaxDJump run return run function test:parkour/events/player/on_djump
