#rightclick
kill @e[tag=card_interaction,scores={data.cards=3..}]
execute as @a at @s if data entity @s SelectedItem.components."minecraft:custom_data".card run summon interaction ~ ~1.4 ~ {Tags:["card_interaction"],width:0.6f,height:0.6f}
scoreboard players add @e[tag=card_interaction] data.cards 1

execute as @e[type=interaction,tag=card_interaction] on target run execute as @s run function lsr:items/main
execute as @e[type=interaction,tag=card_interaction] on target run execute as @s run item modify entity @s weapon.mainhand lsr:remove_1
execute as @e[type=interaction,tag=card_interaction] run data remove entity @s interaction

function lsr:items/crafting/main

#shield
execute as @a[scores={shield.time=5..}] at @s run effect give @s resistance 1 255 true
execute as @a[scores={shield.time=2..}] at @s run function lsr:particles/sphere
execute as @a[scores={shield.time=1..}] at @s run scoreboard players remove @s shield.time 1

#freeze
execute as @e[tag=freezing] at @s if score .freezingTime data.cards matches 1.. run data merge entity @s {NoAI:1b}
execute as @e[tag=freezing] at @s positioned ~ ~ ~ unless entity @e[type=falling_block,tag=freezeBlock,distance=..0.5] if score .freezingTime data.cards matches 5.. run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:ice"},NoGravity:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["freezeBlock"]}
execute as @e[tag=freezing] at @s positioned ~ ~1 ~ if score .freezingTime data.cards matches 5.. run particle minecraft:snowflake ~ ~ ~ 1 1 1 0 3
execute as @e[tag=freezing] at @s unless score .freezingTime data.cards matches 1.. run data merge entity @s {NoAI:0b}
execute as @e[tag=freezing] at @s unless score .freezingTime data.cards matches 1.. run tag @s remove freezing
execute as @e[type=falling_block,tag=freezeBlock] at @s unless score .freezingTime data.cards matches 1.. run kill @s
execute as @e[type=falling_block,tag=freezeBlock] at @s unless entity @e[tag=freezing,distance=..1.3] run kill @s
#execute as @a[nbt={SelectedItem:{tag:{card_freeze:1b}}}] at @s run clear @s paper{card_freeze:1b} 1

execute if score .freezingTime data.cards matches 1.. run scoreboard players remove .freezingTime data.cards 1
execute if score .freezingTime data.cards matches 1.. unless entity @e[tag=freezing] run scoreboard players set .freezingTime data.cards 0
