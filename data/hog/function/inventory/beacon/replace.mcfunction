execute store result score #head hog.data run data get storage hog:data head.id
execute unless score @s hog.head = #head hog.data run function hog:inventory/beacon/replace/tier with storage hog:data head.beacon
execute if data storage hog:data head.beacon.power run function hog:inventory/beacon/add/power with storage hog:data head.beacon.power
item modify entity @s armor.head {function:"copy_custom_data",source:{type:"storage",source:"hog:data"},ops:[{source:"head",target:"hog:head",op:"replace"}]}
