# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.example.root] run return 0
execute on passengers if entity @s[tag=aj.example.data] unless data entity @s {data:{rigHash: '0b93a115e0695ce1ea3b9b7b5336a834ed33273c66ca95d1d5c8af0f12687fa8'}} on vehicle run function animated_java:example/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1