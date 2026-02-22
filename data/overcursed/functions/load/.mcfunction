#> overcursed:load/
#
# 
#
# @within tag/function minecraft:load

# debug mode
    data modify storage overcursed: Debug set value 1b

# once
    execute if data storage overcursed: {Debug: 1b} run function overcursed:load/once
    execute unless data storage overcursed: {Debug: 1b} unless data storage overcursed: Settings{Version: "v0.0.0"} run function overcursed:load/once
