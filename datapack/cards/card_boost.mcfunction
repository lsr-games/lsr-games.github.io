execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_boost:1b}}}}] at @s run effect give @s speed 2 5 true
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_boost:1b}}}}] at @s run particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 0 5 normal @a[distance=..25]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_boost:1b}}}}] at @s run playsound minecraft:block.portal.travel master @a[distance=..7] ~ ~ ~ 0.5 2
