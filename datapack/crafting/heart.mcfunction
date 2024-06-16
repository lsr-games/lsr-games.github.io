kill @e[type=item,nbt={Item:{id:"minecraft:red_dye",count:8}},distance=..0.5,limit=1]
give @p paper[custom_data={card:1b,card_heart:1b},custom_model_data=3,custom_name='[{"text":"Heart Card ","italic":false,"color":"red"},{"text":"<right click>","italic":true,"color":"gray"}]'] 1
particle minecraft:flash ~ ~0.3 ~ 0.5 0.5 0.5 0 5 normal @a[distance=..25]
playsound minecraft:block.crafter.craft master @a[distance=..15] ~ ~ ~ 1 2
kill @s
