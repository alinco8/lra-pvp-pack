#> test:skill/tuta/kill
# アマスタと乗ってるやつらを消す

tp @s ~ -100 ~

execute on passengers run kill @s
kill @s

particle dust 0.345 0.192 0.016 1 ~ ~-1 ~ 0.8 0.8 0.8 0.01 50 normal @a