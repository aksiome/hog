advancement revoke @s only hog:consume_any

execute store success score #mainhand hog.data if items entity @s weapon.mainhand poisonous_potato[consumable,custom_data~{"hog:consumable":{}}]

data modify storage hog:data head set from entity @s equipment.head.components."minecraft:custom_data"."hog:head"
execute if score #mainhand hog.data matches 1 run data modify storage hog:data head merge from entity @s SelectedItem.components."minecraft:custom_data"."hog:consumable".data
execute if score #mainhand hog.data matches 0 run data modify storage hog:data head merge from entity @s equipment.offhand.components."minecraft:custom_data"."hog:consumable".data

execute if score @s hog.head matches 3..8 run function hog:inventory/beacon/replace
