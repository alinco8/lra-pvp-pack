tp @s @e[tag=penetrate_return_point,limit=1,sort=nearest]
function test:skill/penetrate/events/player_action
kill @e[tag=penetrate_return_point,limit=1,sort=nearest]
