scoreboard players set @s cooltime 10

execute anchored eyes if block ^ ^ ^1 air run return run function test:skill/penetrate/events/on_fail
execute anchored eyes if block ^ ^ ^2 air positioned ^ ^ ^2 positioned ~ ~ ~ run return run function test:skill/penetrate/events/on_success
execute anchored eyes if block ^ ^ ^3 air positioned ^ ^ ^3 positioned ~ ~ ~ run return run function test:skill/penetrate/events/on_success
execute anchored eyes if block ^ ^ ^4 air positioned ^ ^ ^4 positioned ~ ~ ~ run return run function test:skill/penetrate/events/on_success

function test:skill/penetrate/events/on_fail