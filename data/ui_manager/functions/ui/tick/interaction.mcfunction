#> ui_manager:ui/tick/interaction
#
# 
#
# @within function ui_manager:ui/tick/marker

# click検知
    data modify storage ui_manager: Interaction set from entity @s interaction
    data modify storage ui_manager: Attack set from entity @s attack
    execute if data storage ui_manager: Interaction.timestamp run function ui_manager:ui/click/
    execute if data storage ui_manager: Attack.timestamp run function ui_manager:ui/attack/

# reset
    data remove storage ui_manager: Interaction
    data remove storage ui_manager: Attack
