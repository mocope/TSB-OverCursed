#> overcursed:the_void/room/create/core/room_marker
#
# 
#
# @within function overcursed:the_void/room/create/core/

# プレイヤーと紐づける
    scoreboard players operation @s OC.RoomOwner = @p[tag=this] OhMyDatID

# 初期化中tagを消す
    tag @s remove OC.InitializingRoomMarker
