execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_jump:1b}}}}] at @s run effect give @s levitation 1 15 true
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_jump:1b}}}}] at @s run effect give @s speed 1 15 true
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{card_jump:1b}}}}] at @s run playsound entity.player.levelup master @a[distance=..15] ~ ~ ~ 0.5 0.1
# unless block ~ ~-1.5 ~ air
