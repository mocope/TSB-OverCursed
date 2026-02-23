#> overcursed:the_void/return/tick
#
# 
#
# @within function

# 接地しているかの取得
    function api:data_get/on_ground
    
# 地面非接地+スニーク+真上を向いている場合帰還タグを付与
    execute if data storage api: {OnGround:false} if predicate lib:is_sneaking if entity @s[x_rotation=-90] run tag @s add OC.VoidRoomReturn
