#> ui_manager:ui/get_pos/binary_search/256
#
# 
#
# @within function ui_manager:ui/get_pos/binary_search/

# 当たり判定をチェック
    execute positioned ^ ^ ^2.56 run function ui_manager:ui/get_pos/binary_search/check.m with storage ui_manager: Argument

# 通り過ぎていなければ距離を増やす
    execute if data storage ui_manager: {Success: 1b} run scoreboard players add $Distance Temporary 256

# 次のデータを準備
    data modify storage ui_manager: Argument.Distance set from storage ui_manager: Distances[-1].Distance
    data modify storage ui_manager: Argument.Value set from storage ui_manager: Distances[-1].Value

# 次チェック
    execute if data storage ui_manager: {Success: 1b} positioned ^ ^ ^2.56 run return run function ui_manager:ui/get_pos/binary_search/m with storage ui_manager: Argument
    execute if data storage ui_manager: {Success: 0b} run function ui_manager:ui/get_pos/binary_search/m with storage ui_manager: Argument
