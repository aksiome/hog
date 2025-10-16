execute if score @s hog.head matches 0 run return run function hog:inventory/none/tick
execute if score @s hog.head matches 1..2 run return run function hog:inventory/jukebox/tick
execute if score @s hog.head matches 3..8 run function hog:inventory/beacon/tick
