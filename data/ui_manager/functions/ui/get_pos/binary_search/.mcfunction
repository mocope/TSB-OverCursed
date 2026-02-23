#> ui_manager:ui/get_pos/binary_search/
#
# 
# @output storage ui_manager: Distance : double
# @within function ui_manager:ui/get_pos/

# reset
    scoreboard players set $Distance Temporary 0

# Axisをdxyzに変換
    execute if data storage ui_manager: {Axis: "x+"} run data modify storage ui_manager: Args.Axis set value "dx=6,dy=0,dz=0"
    execute if data storage ui_manager: {Axis: "x-"} run data modify storage ui_manager: Args.Axis set value "dx=-6,dy=0,dz=0"
    execute if data storage ui_manager: {Axis: "y+"} run data modify storage ui_manager: Args.Axis set value "dx=0,dy=6,dz=0"
    execute if data storage ui_manager: {Axis: "y-"} run data modify storage ui_manager: Args.Axis set value "dx=0,dy=-6,dz=0"
    execute if data storage ui_manager: {Axis: "z+"} run data modify storage ui_manager: Args.Axis set value "dx=0,dy=0,dz=6"
    execute if data storage ui_manager: {Axis: "z-"} run data modify storage ui_manager: Args.Axis set value "dx=0,dy=0,dz=-6"

# Distances
    data modify storage ui_manager: Distances set value [\
        {value:   1, distance: 0.01f},\
        {value:   2, distance: 0.02f},\
        {value:   4, distance: 0.04f},\
        {value:   8, distance: 0.08f},\
        {value:  16, distance: 0.16f},\
        {value:  32, distance: 0.32f},\
        {value:  64, distance: 0.64f},\
        {value: 128, distance: 1.28f},\
    ]

# 二分探索
    # マクロを活かしきれないので、1つ目だけマクロを使わず処理する
        function ui_manager:ui/get_pos/binary_search/256

# scoreをstorageに変換
    execute store result storage ui_manager: Distance double 0.01 run scoreboard players get $Distance Temporary

# reset
    scoreboard players reset $Distance Temporary
    data remove storage ui_manager: Distances
    data remove storage ui_manager: Argument
