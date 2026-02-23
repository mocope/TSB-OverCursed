#> overcursed:the_void/room/create/core/
#
# 
#
# @within function overcursed:the_void/room/create/

# 部屋の生成
    fill ~ ~ ~ ~5 ~5 ~5 black_concrete hollow
    summon marker ~3 ~1 ~3 {Tags:["OC.RoomMarker"]}

# 次の部屋予定地にtp
    tp @s ~ ~ ~10 ~90 ~0
    execute if entity @e[type=marker,tag=OC.RoomMarker,distance=0] run tp @s ~ ~10 ~
