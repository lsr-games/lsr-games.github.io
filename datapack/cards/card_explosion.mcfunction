execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_explosion:1b}}}}] at @s run particle minecraft:explosion ~ ~1.5 ~ 0.6 0.5 0.6 0 5 normal @a[distance=..25]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_explosion:1b}}}}] at @s run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 0.5 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_explosion:1b}}}}] at @s run effect give @e[type=!player,type=!marker,type=!interaction,distance=..8] poison 1 1 true
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_explosion:1b}}}}] at @s run execute as @e[type=!player,type=!marker,type=!interaction,distance=..8] at @s run data merge entity @s {Motion:[0.0,1.0,0.0]}
