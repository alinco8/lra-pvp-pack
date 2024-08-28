#> test:gold-block-jump/event/is_flying

execute if score @s Sneaking matches 1 run function test:gold-block-jump/event/on_cancel_fly
execute anchored eyes rotated 0 0 unless block ^ ^0.2 ^ air run function test:gold-block-jump/event/on_hit_head

particle dust 1 1 1 2 ~ ~ ~