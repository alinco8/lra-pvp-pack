execute if score $Global skillselect matches 1 run function test:system/skillsystem/skilldecide/speeddecide
execute if score $Global skillselect matches 2 run function test:system/skillsystem/skilldecide/levitationdecide
execute if score $Global skillselect matches 3 run function test:system/skillsystem/skilldecide/invisibilitydecide
execute if score $Global skillselect matches 4 run function test:system/skillsystem/skilldecide/accelerationdecide
execute if score $Global skillselect matches 5 run function test:system/skillsystem/skilldecide/scythe_summondecide
execute if score $Global skillselect matches 6 run function test:system/skillsystem/skilldecide/ivedecide
execute if score $Global skillselect matches 7 run function test:system/skillsystem/skilldecide/firedecide
execute if score $Global skillselect matches 8 run function test:system/skillsystem/skilldecide/waterdecide






function test:tagremove
advancement revoke @s only test:interact_decide