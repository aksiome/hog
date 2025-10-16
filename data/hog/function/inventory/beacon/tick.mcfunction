execute store result storage hog:data id int 1 run scoreboard players get @s hog.head
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"hog:consumable":{}}] run function hog:inventory/beacon/tick/mainhand with storage hog:data
execute if items entity @s weapon.offhand *[minecraft:custom_data~{"hog:consumable":{}}] run function hog:inventory/beacon/tick/offhand with storage hog:data
