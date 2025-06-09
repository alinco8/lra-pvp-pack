#50%の確率でブロックを破壊
execute run fill ~ ~ ~ ~ ~ ~ air
#execute if predicate test:random_50 if block ~ ~ ~ stone_bricks run fill ~ ~ ~ ~ ~ ~ cracked_stone_bricks