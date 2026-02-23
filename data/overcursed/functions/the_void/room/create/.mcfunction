#> overcursed:the_void/room/create/
#
# 
#
# @within function asset_manager:teleporter/tick/active

# markerがないときに召喚
    execute in minecraft:overworld unless entity @e[type=marker,tag=OC.RoomCreateMarker] positioned 2048 0 2048 run summon marker ~ ~ ~ {Tags:["OC.RoomCreateMarker"],Rotation:[-180.0f,0.0f]}

# markerから部屋を設置
    execute in minecraft:overworld as @e[type=marker,tag=OC.RoomCreateMarker] at @s run function overcursed:the_void/room/create/core/
