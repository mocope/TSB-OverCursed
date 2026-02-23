#> overcursed:the_void/tick/
#
# void全体のtick処理
#
# @within function overcursed:tick/

# 部屋が一つもなければ初期位置に戻す
    execute positioned 2048.0 -63.0 2048.0 as 0-0-800-0-800 if entity @s[distance=..0.01] unless entity @e[type=marker,tag=OC.RoomMarker,dx=15,dy=320,dz=15] run scoreboard players set $OC.RoomPosition Global 0
    execute positioned 2048.0 -63.0 2048.0 as 0-0-800-0-800 if entity @s[distance=..0.01] unless entity @e[type=marker,tag=OC.RoomMarker,dx=15,dy=320,dz=15] run tp @s 2048.0 -63.0 2048.0

# room tick
    execute as @e[type=marker,tag=OC.RoomMarker] at @s run function overcursed:the_void/room/tick/

# 一度抜けて入ったプレイヤーや不正に脱出したプレイヤーを現世に送り返す
    execute as @a[tag=OC.InVoid] at @s unless entity @e[type=marker,tag=OC.RoomMarker,distance=..5] run function overcursed:the_void/room/leave/world_rejoined
