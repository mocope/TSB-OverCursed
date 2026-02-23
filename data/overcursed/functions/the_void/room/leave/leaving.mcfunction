#> overcursed:the_void/room/leave/leaving
#
# 
#
# @within function overcursed:the_void/room/tick/

# effect
    effect give @s slowness 1 2 true

# sound
    execute if entity @s[tag=!OC.Leaving] run playsound block.conduit.deactivate master @s ~ ~ ~ 1 2

# particle
    execute at @s run particle dust 1 1 1 1 ~ ~2.9 ~

# on_ground
    function api:data_get/on_ground

# leave
    execute if data storage api: {OnGround: 0b} if entity @s[tag=OC.Leaving] as @e[type=marker,tag=OC.RoomMarker,distance=..0.01] run function overcursed:the_void/room/remove/
    execute if data storage api: {OnGround: 0b} if entity @s[tag=OC.Leaving] run function overcursed:the_void/room/leave/

# tag
    execute if data storage api: {OnGround: 1b} run tag @s add OC.Leaving
