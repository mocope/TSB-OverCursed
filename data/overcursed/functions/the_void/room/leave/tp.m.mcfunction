#> overcursed:the_void/room/leave/tp.m
#
# 
# @input args
#   Dimension : string
#   X : double
#   Y : double
#   Z : double
# @within function overcursed:the_void/room/leave/

# 慣性削除
    tp 0.0 0.0 0.0
# 元の場所に戻す
    $execute in $(Dimension) positioned $(X) $(Y) $(Z) align xyz run tp @s ~0.5 ~ ~0.5
# 元のゲームモードに戻す
    $gamemode $(GameMode)
