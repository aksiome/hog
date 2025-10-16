execute unless items entity @s weapon.* *[minecraft:consumable] run return 0

execute if items entity @s weapon.offhand *[jukebox_playable] \
    if items entity @s weapon.offhand *[minecraft:consumable] \
    run item modify entity @s weapon.offhand hog:remove_consumable

execute if items entity @s weapon.mainhand *[jukebox_playable] \
    if items entity @s weapon.mainhand *[minecraft:consumable] \
    run item modify entity @s weapon.mainhand hog:remove_consumable

execute if items entity @s weapon.offhand *[custom_data~{"hog:consumable":{}}] \
    if items entity @s weapon.offhand *[minecraft:consumable] \
    run item modify entity @s weapon.offhand hog:remove_consumable

execute if items entity @s weapon.mainhand *[custom_data~{"hog:consumable":{}}] \
    if items entity @s weapon.mainhand *[minecraft:consumable] \
    run item modify entity @s weapon.mainhand hog:remove_consumable
