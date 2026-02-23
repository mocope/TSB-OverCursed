#> overcursed:the_void/room/tick/
#
# 部屋一つ一つのtick処理
#
# @within function overcursed:the_void/tick/

# get owner
    execute as @a[tag=OC.InVoid] if score @s OhMyDatID = @e[type=marker,tag=OC.RoomMarker,distance=..0.01,limit=1] OC.RoomOwner run tag @s add OC.RoomOwner

# no owner
    execute unless entity @p[tag=OC.RoomOwner] run tag @s add OC.NoOwner
    execute if entity @s[tag=OC.NoOwner] run function overcursed:the_void/room/tick/no_owner

# leave
    execute as @p[tag=OC.RoomOwner] if predicate lib:is_sneaking if entity @s[x_rotation=-90..-70] run function overcursed:the_void/room/leave/leaving
    execute as @p[tag=OC.RoomOwner] unless predicate lib:is_sneaking run tag @s remove OC.Leaving
    execute as @p[tag=OC.RoomOwner] unless entity @s[x_rotation=-90..-70] run tag @s remove OC.Leaving

# remove tag
    tag @a[tag=OC.RoomOwner] remove OC.RoomOwner
