execute if items entity @s weapon.mainhand *[jukebox_playable] \
    if items entity @s weapon.mainhand *[!minecraft:consumable] \
    run item modify entity @s weapon.mainhand hog:set_consumable

execute if items entity @s weapon.offhand *[jukebox_playable] \
    if items entity @s weapon.offhand *[!minecraft:consumable] \
    run item modify entity @s weapon.offhand hog:set_consumable
