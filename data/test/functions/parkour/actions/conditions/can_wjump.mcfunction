# summon armor_stand ^ ^ ^ {Tags:["KillMe"],Marker:1b,Small:1b,NoGravity:1b}

execute anchored feet rotated ~ 0 if block ^ ^-1 ^-1 #test:cant_wjump run return fail
execute if score @s WJumpUsed matches 3.. run return fail

return 1