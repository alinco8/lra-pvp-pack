summon armor_stand ^ ^ ^1 {Tags:["penetrate_point"],NoGravity:1b}

scoreboard players set @e[tag=penetrate_point] actiontime 1

#summon armor_stand ~ ~ ~ {Tags:["penetrate_return_point"],NoGravity:1b}

#tp @e[tag=penetrate_return_point,limit=1,sort=nearest] ~ ~ ~ ~ ~
tp @e[tag=penetrate_point,limit=1,sort=nearest] ^ ^ ^1 ~ ~

function test:skill/penetrate/events/player_action