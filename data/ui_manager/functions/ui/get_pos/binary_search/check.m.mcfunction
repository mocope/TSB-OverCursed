#> ui_manager:ui/get_pos/binary_search/check.m
#
# 
# @input args
#   Axis : string
# @within function ui_manager:ui/get_pos/binary_search/m

$execute store success storage ui_manager: Success byte 1 if entity @e[type=interaction,tag=UI.Linked,$(Axis)] positioned ~-1 ~-1 ~-1 if entity @e[type=interaction,tag=UI.Linked,$(Axis)]
