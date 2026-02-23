#> overcursed:the_void/room/remove/
#
# 
#
# @within function 
#   overcursed:the_void/room/tick/
#   overcursed:the_void/room/remove/no_owner

# 解体
    fill ~-2 ~-1 ~-2 ~2 ~3 ~2 air

# 削除
    kill @e[tag=OC.RoomElement,distance=..5]
    kill @s
