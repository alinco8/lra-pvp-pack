# ランダムなブロック破壊（5x5x1の範囲でランダムに）下段
execute if predicate test:random_50 positioned ~-2 ~ ~-2 run function test:skill/weapons/events/hammer/crater/random_crater
execute if predicate test:random_50 positioned ~-2 ~ ~2 run function test:skill/weapons/events/hammer/crater/random_crater
execute if predicate test:random_50 positioned ~2 ~ ~-2 run function test:skill/weapons/events/hammer/crater/random_crater
execute if predicate test:random_50 positioned ~2 ~ ~2 run function test:skill/weapons/events/hammer/crater/random_crater
#execute if predicate test:random_50 positioned ~-2 ~ ~0 run function test:skill/weapons/events/hammer/crater/random_crater
#execute if predicate test:random_50 positioned ~-2 ~ ~0 run function test:skill/weapons/events/hammer/crater/random_crater

# ランダムなブロック破壊（5x5x1の範囲でランダムに）中段
execute if predicate test:random_50 positioned ~-2 ~4 ~-2 run function test:skill/weapons/events/hammer/crater/random_crater
execute if predicate test:random_50 positioned ~-2 ~4 ~2 run function test:skill/weapons/events/hammer/crater/random_crater
execute if predicate test:random_50 positioned ~2 ~4 ~-2 run function test:skill/weapons/events/hammer/crater/random_crater
execute if predicate test:random_50 positioned ~2 ~4 ~2 run function test:skill/weapons/events/hammer/crater/random_crater
#execute if predicate test:random_50 positioned ~-2 ~4 ~0 run function test:skill/weapons/events/hammer/crater/random_crater
#execute if predicate test:random_50 positioned ~-2 ~4 ~0 run function test:skill/weapons/events/hammer/crater/random_crater

execute positioned ~ ~2 ~ run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute positioned ~ ~2 ~ run fill ~-2 ~ ~-2 ~2 ~ ~2 air
execute positioned ~ ~2 ~ run fill ~ ~-2 ~-2 ~ ~2 ~2 air
execute positioned ~ ~2 ~ run fill ~-2 ~-2 ~ ~2 ~2 ~ air