#> ui_manager:ui/get_pos/binary_search/m
#
# 
# @input 
#   args
#       Value : int
#       Distance : float
#   storage
#       ui_manager: Distances
# @within function 
#   ui_manager:ui/get_pos/binary_search/256
#   ui_manager:ui/get_pos/binary_search/m

# 当たり判定をチェック
    $execute positioned ^ ^ ^$(Distance) run function ui_manager:ui/get_pos/binary_search/check.m with storage ui_manager: Argument

# 通り過ぎていなければ距離を増やす
    $execute if data storage ui_manager: {Success: 1b} run scoreboard players add $Distance Temporary $(Value)

# 次のデータを準備
    data remove storage ui_manager: Distances[-1]
    execute unless data storage ui_manager: Distances[-1] run return 0
    data modify storage ui_manager: Argument.Distance set from storage ui_manager: Distances[-1].Distance
    data modify storage ui_manager: Argument.Value set from storage ui_manager: Distances[-1].Value

# 次のチェック
    $execute if data storage ui_manager: {Success: 1b} positioned ^ ^ ^$(Distance) run return run function ui_manager:ui/get_pos/binary_search/m with storage ui_manager: Argument
    function ui_manager:ui/get_pos/binary_search/m with storage ui_manager: Argument
