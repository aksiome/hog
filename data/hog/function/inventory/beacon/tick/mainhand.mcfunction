$execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"hog:consumable":{head:[$(id)b]}}] \
    if items entity @s weapon.mainhand *[!minecraft:consumable] \
    run item modify entity @s weapon.mainhand hog:set_consumable

$execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{"hog:consumable":{head:[$(id)b]}}] \
    if items entity @s weapon.mainhand *[minecraft:consumable] \
    run item modify entity @s weapon.mainhand hog:remove_consumable