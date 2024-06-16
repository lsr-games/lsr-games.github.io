execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_freeze:1b}}}},tag=!freezing] at @s run scoreboard players add .freezingTime data 60
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_freeze:1b}}}},tag=!freezing] at @s run execute as @e[type=!player,type=!interaction,type=!marker,distance=..20] at @s run tag @s add freezing
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_freeze:1b}}}}] at @s run particle minecraft:snowflake ~ ~1.5 ~ 0.7 0.7 0.7 0 7 normal @a[distance=..25]
