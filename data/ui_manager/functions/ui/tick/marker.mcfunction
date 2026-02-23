#> ui_manager:ui/tick/marker
#
# 
#
# @within function ui_manager:tick/

# 個別ストレージを呼び出す

# データを取り出す
    data modify storage ui_manager: Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Pos
    data modify storage ui_manager: Axis set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Axis
    data modify storage ui_manager: Size set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Size
    data modify storage ui_manager: Offset set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Offset

# 紐付いたinteractionを取得
    tag @s add UI.Linked
    execute as @e[type=interaction,tag=UI.Interaction] if score @s UI.Id = @e[type=marker,tag=UI.Linked,limit=1] UI.Id run tag @s add UI.Linked

# interaction tick
    function ui_manager:ui/tick/interaction

# reset
    tag @e[tag=UI.Linked] remove UI.Linked
    data remove storage ui_manager: Pos
    data remove storage ui_manager: Axis
    data remove storage ui_manager: Size
    data remove storage ui_manager: Offset
