#> ui_manager:tick/
#
# 
#
# @within tag/function minecraft:tick

# ui tick
    execute as @e[type=marker,tag=UI.Marker] at @s run function ui_manager:ui/tick/marker
