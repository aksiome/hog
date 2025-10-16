data modify storage hog:data head set from entity @s equipment.head.components."minecraft:custom_data"."hog:head"

execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"fire_resistance"}]
execute if score #count hog.data matches 1.. run function hog:powers/fire_resistance with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"haste"}]
execute if score #count hog.data matches 1.. run function hog:powers/haste with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"jump_boost"}]
execute if score #count hog.data matches 1.. run function hog:powers/jump_boost with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"night_vision"}]
execute if score #count hog.data matches 1.. run function hog:powers/night_vision with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"regeneration"}]
execute if score #count hog.data matches 1.. run function hog:powers/regeneration with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"resistance"}]
execute if score #count hog.data matches 1.. run function hog:powers/resistance with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"speed"}]
execute if score #count hog.data matches 1.. run function hog:powers/speed with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"strength"}]
execute if score #count hog.data matches 1.. run function hog:powers/strength with storage hog:data
execute store result score #count hog.data store result storage hog:data amplifier int .999999999 if data storage hog:data head.beacon.powers[{id:"water_breathing"}]
execute if score #count hog.data matches 1.. run function hog:powers/water_breathing with storage hog:data
