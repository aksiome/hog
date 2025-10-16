execute store result score #max hog.data run data get storage hog:data head.beacon.power.max
$execute store result score #count hog.data if data storage hog:data head.beacon.powers[{id:"$(id)"}]
execute if score #count hog.data >= #max hog.data run return run data remove storage hog:data head.beacon.power
data modify storage hog:data head.beacon.powers prepend from storage hog:data head.beacon.power
execute store result score #max hog.data run data get storage hog:data head.beacon.tier
execute store result score #count hog.data if data storage hog:data head.beacon.powers[]
execute if score #count hog.data > #max hog.data run data remove storage hog:data head.beacon.powers[-1]
item modify entity @s armor.head hog:beacon/lore
data remove storage hog:data head.beacon.power
