#> overcursed:the_void/room/leave/world_rejoined
#
# 
#
# @within function overcursed:the_void/tick/

# 通常処理
    function overcursed:the_void/room/leave/

# もし部屋が残っていた場合削除する
    tag @s add this
    execute as @e[tag=OC.RoomMarker] if score @s OC.RoomOwner = @p[tag=this] OhMyDatID at @s run function overcursed:the_void/room/remove/no_owner
    tag @s remove this

# アイテムを送る
