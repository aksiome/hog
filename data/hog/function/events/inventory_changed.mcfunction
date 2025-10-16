advancement revoke @s only hog:inventory_changed

execute unless items entity @s[scores={hog.head=2}] armor.head poisonous_potato[custom_data~{"hog:head":{id:2}}] run function hog:inventory/jukebox/empty
execute unless items entity @s armor.head poisonous_potato[custom_data~{"hog:head":{}}] run return run scoreboard players set @s hog.head 0
execute store result score @s hog.head run data get entity @s equipment.head.components."minecraft:custom_data"."hog:head".id
