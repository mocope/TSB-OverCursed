#> overcursed:the_void/room/create/
#
# 0-0-800-0-800 = RoomCreateMarker
#
# @within function asset_manager:teleporter/tick/active

# 座標データを保存
    function api:data_get/pos
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.X set from storage api: Pos[0]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.Y set from storage api: Pos[1]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.Z set from storage api: Pos[2]
    function api:data_get/dimension
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.Dimension set from storage api: Dimension
# ゲームモードも保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.GameMode set value "survival"
    execute if entity @s[gamemode=adventure] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.GameMode set value "adventure"
    execute if entity @s[gamemode=creative] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OC.Void.GameMode set value "creative"

# adv
    gamemode adventure

# tag
    tag @s add OC.InVoid

# markerから部屋を設置し、移動
    execute as 0-0-800-0-800 at @s run function overcursed:the_void/room/create/core/

# vfx
    function asset_manager:teleporter/tick/vfx/teleport/from
    execute at @s run function asset_manager:teleporter/tick/vfx/teleport/to
