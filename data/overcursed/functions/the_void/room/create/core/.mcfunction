#> overcursed:the_void/room/create/core/
#
# 
#
# @within function overcursed:the_void/room/create/

# 部屋の生成
    fill ~ ~ ~ ~4 ~4 ~4 black_concrete hollow
    fill ~1 ~1 ~1 ~3 ~3 ~3 light[level=15]
    summon marker ~2.5 ~1 ~2.5 {Tags:["OC.RoomMarker","OC.InitializingRoomMarker"]}
    execute as @e[tag=OC.InitializingRoomMarker] at @s run function overcursed:the_void/room/create/core/room_marker

# 次の部屋予定地にtp
    scoreboard players add $OC.RoomPosition Global 1
    scoreboard players operation $OC.RoomPosition Global %= $4 Const
    execute if score $OC.RoomPosition Global matches 0 run tp @s 2048.0 ~ 2048.0
    execute if score $OC.RoomPosition Global matches 1 run tp @s 2059.0 ~ 2048.0
    execute if score $OC.RoomPosition Global matches 2 run tp @s 2048.0 ~ 2059.0
    execute if score $OC.RoomPosition Global matches 3 run tp @s 2059.0 ~ 2059.0
    execute positioned ~3 ~1 ~3 if entity @e[type=marker,tag=OC.RoomMarker,distance=0.01] run tp @s ~ ~11 ~
