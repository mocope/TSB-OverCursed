#> ui_manager:load/
#
# 
#
# @within tag/function minecraft:load

# First Load
    execute unless data storage ui_manager: Settings{Loaded: 1b} run function ui_manager:load/once
