$execute if items entity @s weapon.offhand *[minecraft:custom_data~{"hog:consumable":{head:[$(id)b]}}] \
    if items entity @s weapon.offhand *[!minecraft:consumable] \
    run item modify entity @s weapon.offhand hog:set_consumable

$execute unless items entity @s weapon.offhand *[minecraft:custom_data~{"hog:consumable":{head:[$(id)b]}}] \
    if items entity @s weapon.offhand *[minecraft:consumable] \
    run item modify entity @s weapon.offhand hog:remove_consumable