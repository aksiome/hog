forceload add -30000000 1600
execute unless entity B5-0-0-0-3 run summon minecraft:item_display -30000000 0 1600 {UUID:[I;181,0,0,3],Tags:["bs.entity","bs.persistent","smithed.entity","smithed.strict"],view_range:0f}

scoreboard objectives add hog.data dummy
scoreboard objectives add hog.head dummy

schedule function hog:4s 1t
schedule function hog:tick 1t

data modify storage hog:const profiles set value { \
    "minecraft:music_disc_13": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk3MjE5ODU1MDdjNTkyMDg3MDEzNjNkZWE2NjY2OTViNjEwYmJmMGQyNTczYzViMjc4NzE5ZTczNzgwYThiYyJ9fX0=", \
    "minecraft:music_disc_cat": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjg0ZTVkZTc0N2I1YWRmYjM4NzQzZDk1YTNhYjYyYzYwMGJkNmMzNzBiOTlmOGMyZDEzMDhkODMzMDgxMTUxOCJ9fX0=", \
    "minecraft:music_disc_blocks": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWNkMjBjM2JjMTAyNGUxNTdkMDE1YjE0Y2M4MjU4YTA4ODI5NWIwNTAyNDlkNzQ5NzI1NGFkMDAzOTFlYjJmIn19fQ==", \
    "minecraft:music_disc_far": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTA0MWM2OTEzNzc2MGNiYjlkZDZhYjYyNWY4NjllY2I3ZjVmODFlOGM2YTNmYTg2YTkwMDBmOGZlODAxMmI1OCJ9fX0=", \
    "minecraft:music_disc_mall": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE1OWVhNWZiYzRlOThhOWI2MDM4NTRiYmQ0ZjFiMDdhZWZjZDRkZjA1MWIzZmE2MTU4YmJmOTU5YmU0NDQxMyJ9fX0=", \
    "minecraft:music_disc_mellohi": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjA4NWIxZmI0OWVmMTNiYjZjZTEwODA1ZTdiNmNhY2Q0ODZmYWM2MzJkMzFjN2ZkYTY5NWE0ZGYwOWY4NzY3MiJ9fX0=", \
    "minecraft:music_disc_stal": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQ1ZDkwODkzMjI2NGY0MjU5ODhmMjkzZTAwZTU4ZjZiZTJhMDg3NTI5MTk5MDRmNDhhYTZmMDg1ZmE1MTE2ZCJ9fX0=", \
    "minecraft:music_disc_strad": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWYzMDhkYTRiZTEzNWRmOWMwOGM4ZTRmNDU1ZmE3YWRlNjMxMzFiOTE0NWZlOWQwMzEzZGM0NDZlZWYyMzcxMCJ9fX0=", \
    "minecraft:music_disc_ward": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU1ZGVhYjM0NWU5YzZkYWMzNjUzZTY0NThlMjgxYTBhMGQ5ZDhkNTdmMTYyMDU1ZTQyYmY1NDZlZjM3MTgxYSJ9fX0=", \
    "minecraft:music_disc_11": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjVlZTYyNTYyMjA4MDIwY2NiMGI3YzQ5MmU4YjA4NzE4OTBiZmNlYTUwN2Y4Y2I1ZjM0ZDA2YzRkZGExODYxNCJ9fX0=", \
    "minecraft:music_disc_wait": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGJkNTlmYTRlNzI2MGJiOGFkMjA1ZTBlNjM5OGY5ZmM2MzMzMTAwNTdhMDRjMmY4NGU1MzNlNWZhMjg2ZmE5In19fQ==", \
    "minecraft:music_disc_otherside": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjY3OTU3NzQwM2IzMzhlOGYwY2Y3MmRhMmU3NGI3MzliYTJlZGJlMTc4NjlhNzY2YTViNmU0ZWUyNGVmMzI4NSJ9fX0=", \
    "minecraft:music_disc_5": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzVjYjNiM2Q5ZTliZGI2NzE2ODJmYzNhY2U3MDJhY2JiZWQxYTQxMmY0MmIxNzI4OTA3MGRmNDM0MDVjNzA4ZiJ9fX0=", \
    "minecraft:music_disc_pigstep": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU1ZGRhODYwM2E1MGM5OWVkMzc1ODU3YTk4NmM2NjMyMmJlZGM5ZDQ2ZjczMGZhMmU2OGJlMDQ2MTU5ZDY0MyJ9fX0=", \
}

data modify storage hog:const sounds set value { \
    "minecraft:13": "minecraft:music_disc.13", \
    "minecraft:cat": "minecraft:music_disc.cat", \
    "minecraft:blocks": "minecraft:music_disc.blocks", \
    "minecraft:chirp": "minecraft:music_disc.chirp", \
    "minecraft:far": "minecraft:music_disc.far", \
    "minecraft:mall": "minecraft:music_disc.mall", \
    "minecraft:mellohi": "minecraft:music_disc.mellohi", \
    "minecraft:stal": "minecraft:music_disc.stal", \
    "minecraft:strad": "minecraft:music_disc.strad", \
    "minecraft:ward": "minecraft:music_disc.ward", \
    "minecraft:11": "minecraft:music_disc.11", \
    "minecraft:creator_music_box": "minecraft:music_disc.creator_music_box", \
    "minecraft:wait": "minecraft:music_disc.wait", \
    "minecraft:creator": "minecraft:music_disc.creator", \
    "minecraft:precipice": "minecraft:music_disc.precipice", \
    "minecraft:otherside": "minecraft:music_disc.otherside", \
    "minecraft:relic": "minecraft:music_disc.relic", \
    "minecraft:5": "minecraft:music_disc.5", \
    "minecraft:pigstep": "minecraft:music_disc.pigstep", \
    "minecraft:tears": "minecraft:music_disc.tears", \
    "minecraft:lava_chicken": "minecraft:music_disc.lava_chicken", \
    \
    "minecraft:music_disc_13": "minecraft:music_disc.13", \
    "minecraft:music_disc_cat": "minecraft:music_disc.cat", \
    "minecraft:music_disc_blocks": "minecraft:music_disc.blocks", \
    "minecraft:music_disc_chirp": "minecraft:music_disc.chirp", \
    "minecraft:music_disc_far": "minecraft:music_disc.far", \
    "minecraft:music_disc_mall": "minecraft:music_disc.mall", \
    "minecraft:music_disc_mellohi": "minecraft:music_disc.mellohi", \
    "minecraft:music_disc_stal": "minecraft:music_disc.stal", \
    "minecraft:music_disc_strad": "minecraft:music_disc.strad", \
    "minecraft:music_disc_ward": "minecraft:music_disc.ward", \
    "minecraft:music_disc_11": "minecraft:music_disc.11", \
    "minecraft:music_disc_creator_music_box": "minecraft:music_disc.creator_music_box", \
    "minecraft:music_disc_wait": "minecraft:music_disc.wait", \
    "minecraft:music_disc_creator": "minecraft:music_disc.creator", \
    "minecraft:music_disc_precipice": "minecraft:music_disc.precipice", \
    "minecraft:music_disc_otherside": "minecraft:music_disc.otherside", \
    "minecraft:music_disc_relic": "minecraft:music_disc.relic", \
    "minecraft:music_disc_5": "minecraft:music_disc.5", \
    "minecraft:music_disc_pigstep": "minecraft:music_disc.pigstep", \
    "minecraft:music_disc_tears": "minecraft:music_disc.tears", \
    "minecraft:music_disc_lava_chicken": "minecraft:music_disc.lava_chicken", \
}
