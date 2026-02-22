#> overcursed:artifact/to_curse/
#
# 
# @input
#   storage api:
#       Argument.Id : number
#       Argument.Cursed : boolean = true
#       Argument.CurseValue? : number
# @api

# 引数チェック
    execute unless data storage api: Argument.Id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Id","color":"red"}]
    execute unless data storage api: Argument.Cursed run data modify storage api: Argument.Cursed set value 0b
    execute if data storage api: Argument{Cursed: 1b} unless data storage api: Argument.CurseValue run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" CurseValue","color":"red"}]

# run
    return run function overcursed:artifact/to_curse/core/
