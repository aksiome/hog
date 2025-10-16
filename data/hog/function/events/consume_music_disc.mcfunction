advancement revoke @s only hog:consume_music_disc

execute store success score #mainhand hog.data if items entity @s weapon.mainhand *[jukebox_playable,consumable]

data modify storage hog:data head set from entity @s equipment.head.components."minecraft:custom_data"."hog:head"
execute if score @s hog.head matches 2 run data modify entity B5-0-0-0-3 item set from storage hog:data head.item

execute if score #mainhand hog.data matches 1 run data modify storage hog:data head.item set from entity @s SelectedItem
execute if score #mainhand hog.data matches 0 run data modify storage hog:data head.item set from entity @s equipment.offhand

execute if score @s hog.head matches 2 if score #mainhand hog.data matches 1 run item replace entity @s weapon.mainhand from entity B5-0-0-0-3 contents
execute if score @s hog.head matches 2 if score #mainhand hog.data matches 0 run item replace entity @s weapon.offhand from entity B5-0-0-0-3 contents
execute if data storage hog:data head.sound run function hog:sound/stop with storage hog:data head

data modify storage hog:data head.sound set from storage hog:data head.item.id
data modify storage hog:data head.sound set from storage hog:data head.item.components."minecraft:jukebox_playable"
function hog:sound/lookup with storage hog:data head
function hog:sound/play with storage hog:data head

data modify storage hog:data head.id set value 2
data modify storage hog:data profile set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk3MjE5ODU1MDdjNTkyMDg3MDEzNjNkZWE2NjY2OTViNjEwYmJmMGQyNTczYzViMjc4NzE5ZTczNzgwYThiYyJ9fX0="
function hog:inventory/jukebox/replace with storage hog:data
