#> ui_manager:ui/setup/
#
# 
# @input
#   storage api:
#       Argument.Id : int
#       Argument.Pos : [double] @ 3
#       Argument.Axis : "x+" | "x-" | "y+" | "y-" | "z+" | "z-"
#       Argument.Size : [float] @ 2
# @api

# 引数チェック
    execute unless data storage api: Argument.Id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Id","color":"red"}]
    execute unless data storage api: Argument.Pos run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Pos","color":"red"}]
    execute unless data storage api: Argument.Size run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Size","color":"red"}]
    execute unless data storage api: Argument.Axis run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Axis","color":"red"}]
    execute unless data storage api: Argument{Axis: "x+"} \
            unless data storage api: Argument{Axis: "x-"} \
            unless data storage api: Argument{Axis: "y+"} \
            unless data storage api: Argument{Axis: "y-"} \
            unless data storage api: Argument{Axis: "z+"} \
            unless data storage api: Argument{Axis: "z-"} \
    run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が不正です Axis: ","color":"white"},{"storage":"api:","nbt":"Argument.Axis","color":"red"}]

# 既に同じIdのUIがあれば設置しない
