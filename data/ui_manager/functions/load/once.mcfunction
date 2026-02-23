#> ui_manager:load/once
#
# 
#
# @within function ui_manager:load/

# settings
    data modify storage ui_manager: Settings.Loaded set value 1b

# score
    scoreboard objectives add UI.Id dummy
