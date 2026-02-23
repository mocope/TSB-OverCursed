#> ui_manager:ui/get_pos/
#
# 
# @output storage ui_manager: ClickPos : [float] @ 2
# @within function
#   ui_manager:ui/attack/
#   ui_manager:ui/click/

# 二分探索
    execute as @a[tag=UI.Player] at @s anchored eyes positioned ^ ^ ^ anchored feet run function ui_manager:ui/get_pos/binary_search/

# 座標取得
    # マクロを使って座標を取る、cache効かないけどまぁ仕方ないね
        data modify storage ui_manager: Argument.Distance set from storage ui_manager: Distance
        function ui_manager:ui/get_pos/m with storage ui_manager: Argument
    # 座標を取得
        data modify storage ui_manager: MarkerPos set from entity 0-0-0-0-0 Pos
    # 初期位置に戻す
        execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~

# 計算
    # Pos - UI.Pos
        execute store result score $x Temporary run data get storage ui_manager: MarkerPos[0] 100
        execute store result score $y Temporary run data get storage ui_manager: MarkerPos[1] 100
        execute store result score $z Temporary run data get storage ui_manager: MarkerPos[2] 100
        execute store result score $UI.x Temporary run data get storage ui_manager: Pos[0] 100
        execute store result score $UI.y Temporary run data get storage ui_manager: Pos[1] 100
        execute store result score $UI.z Temporary run data get storage ui_manager: Pos[2] 100
        scoreboard players operation $x Temporary -= $UI.x Temporary
        scoreboard players operation $y Temporary -= $UI.y Temporary
        scoreboard players operation $z Temporary -= $UI.z Temporary
    # to storage
        data modify storage ui_manager: ClickPos set value [0.0f, 0.0f, 0.0f]
    # reset
        scoreboard players reset $x Temporary
        scoreboard players reset $y Temporary
        scoreboard players reset $z Temporary
        scoreboard players reset $UI.x Temporary
        scoreboard players reset $UI.y Temporary
        scoreboard players reset $UI.z Temporary

# 2次元データに加工
    data modify storage ui_manager: AbsAxis set string storage ui_manager: Axis 0 1
    execute if data storage ui_manager: {AbsAxis: "x"} run data remove storage ui_manager: ClickPos[0]
    execute if data storage ui_manager: {AbsAxis: "y"} run data remove storage ui_manager: ClickPos[0]
    execute if data storage ui_manager: {AbsAxis: "z"} run data remove storage ui_manager: ClickPos[0]

# reset
    data remove storage ui_manager: Distance
    data remove storage ui_manager: MarkerPos
    data remove storage ui_manager: Argument
    data remove storage ui_manager: AbsAxis
