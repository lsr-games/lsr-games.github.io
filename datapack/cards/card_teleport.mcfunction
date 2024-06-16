execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_teleport:1b}}}}] at @s run tag @s add teleport
execute as @a[tag=teleport] at @s run spreadplayers ~ ~ 50 50 true @s
execute as @a[tag=teleport] at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0 15 normal @a[distance=..25]
execute as @a[tag=teleport] at @s run playsound minecraft:block.end_portal_frame.fill master @a[distance=..7] ~ ~ ~ 1 2
execute as @a[tag=teleport] at @s run tag @s remove teleport
