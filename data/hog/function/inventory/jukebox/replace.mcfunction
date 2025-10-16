execute if data storage hog:data head.item run function hog:inventory/jukebox/profile/lookup with storage hog:data head.item
execute if data storage hog:data profile run function hog:inventory/jukebox/profile/set with storage hog:data
data modify storage hog:data name set string storage hog:data head.sound 21
execute if data storage hog:data head.sound run function hog:inventory/jukebox/lore/set with storage hog:data
execute unless data storage hog:data head.sound run item modify entity @s armor.head {"function":"set_lore","entity":"this","lore":[],mode:"replace_all"}
item modify entity @s armor.head {function:"copy_custom_data",source:{type:"storage",source:"hog:data"},ops:[{source:"head",target:"hog:head",op:"replace"}]}
