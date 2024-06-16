execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_heart:1b}}}}] at @s run particle minecraft:heart ~ ~1 ~ 0.6 0.7 0.6 0 10 normal @a[distance=..25]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_heart:1b}}}}] at @s run particle minecraft:composter ~ ~1 ~ 0.6 0.7 0.6 0 10 normal @a[distance=..25]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_heart:1b}}}}] at @s run playsound entity.player.levelup master @a[distance=..15] ~ ~ ~ 0.5 0.1
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_heart:1b}}}}] at @s run effect give @a[distance=..7] instant_health 1 0 true
