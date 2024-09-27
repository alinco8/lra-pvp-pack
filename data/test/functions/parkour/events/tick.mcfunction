execute positioned ~ ~1 ~ unless entity @s[dy=0] run function test:parkour/events/on_midair_jump

title @s actionbar ["Wジャンプ回数:",{"score": {"name": "@s","objective":"DJumpUsed"}},"　壁ジャンプ回数:",{"score": {"name": "@s","objective":"WJumpUsed"}}]