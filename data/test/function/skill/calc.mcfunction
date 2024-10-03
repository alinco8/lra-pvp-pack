# 0.1 + ( 0.28 / 180 * runcount )


scoreboard players set $10000 Temp 10000
scoreboard players set $MaxValue Temp 2800
scoreboard players set $MaxRunCount Temp 180
scoreboard players operation $runcount Temp = @s runcount
scoreboard players operation $runcount Temp *= $10000 10000

scoreboard players set $Temp Temp 1000
scoreboard players operation $MaxValue Temp /= $MaxRunCount Temp
scoreboard players operation $MaxValue Temp *= $runcount Temp
scoreboard players operation $Temp Temp += $MaxValue Temp

data modify storage test temp set value {}
execute store result storage test temp.speed float 0.0001 run scoreboard players get $Temp Temp

execute if score $MaxRunCount Temp <= @s runcount run data modify storage test temp.speed set value 0.38
function test:skill/set_speed with storage test temp