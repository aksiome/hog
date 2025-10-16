execute unless items entity @s player.cursor poisonous_potato[custom_data~{"hog:head":{id:2}}] run return run stopsound @s record

item replace entity @s armor.head from entity @s player.cursor
data modify storage hog:data head.item set from entity @s equipment.head.components."minecraft:custom_data"."hog:head".item
data modify entity B5-0-0-0-3 item set from storage hog:data head.item
item replace entity @s player.cursor from entity B5-0-0-0-3 contents
execute if data storage hog:data head.sound run function hog:sound/stop with storage hog:data head

data modify storage hog:data head set value {id:1}
data modify storage hog:data profile set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTgzMjc0ZTVkMDk5MTQzNTA5Nzc0MmEzZjhiZDA5MzE4NWQ5MGY0NGMyZDIxNjk0OWViNDFiMzU3OGEwYjMwMyJ9fX0="
function hog:inventory/jukebox/replace
