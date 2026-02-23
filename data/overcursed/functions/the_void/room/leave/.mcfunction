#> overcursed:the_void/room/leave/
#
# 
#
# @within function 
#   overcursed:the_void/room/leave/world_rejoined
#   overcursed:the_void/room/leave/leaving

# reset
    tag @s remove OC.Leaving
    tag @s remove OC.InVoid

# 個別ストレージを呼び出す
    function oh_my_dat:please

# args
    data modify storage overcursed: Args.Dimension set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.Dimension
    data modify storage overcursed: Args.X set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.X
    data modify storage overcursed: Args.Y set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.Y
    data modify storage overcursed: Args.Z set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.Z
    data modify storage overcursed: Args.GameMode set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.GameMode

# tp
    function overcursed:the_void/room/leave/tp.m with storage overcursed: Args

# sound
    execute at @s run playsound entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

# particle
    execute at @s run function asset_manager:teleporter/tick/vfx/teleport/to

# effect
    effect clear @s blindness

# reset
    data remove storage overcursed: Args

# 
