#> overcursed:artifact/to_curse/core/get_rarity/loop
#
# 
# @input
#   storage api: 
#       Argument.Id : number
#       Registry : number[]
# @within function overcursed:artifact/to_curse/core/get_rarity/

# Fetch
    data modify storage api: Fetch set from storage api: Argument.Id
    execute store success storage api: FetchResult byte 1 run data modify storage api: Fetch set from storage api: Registry[-1]
    execute if data storage api: {FetchResult: 1b} run return 1

# loop
    data remove storage api: FetchResult[-1]
    execute unless data storage api: FetchResult[-1] run return fail
    function overcursed:artifact/to_curse/core/get_rarity/loop
