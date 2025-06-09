execute as @s unless items entity @s hotbar.* ender_eye run tag @s remove explorer
execute as @s if items entity @s hotbar.* ender_eye[count=1] run tag @s add explorer