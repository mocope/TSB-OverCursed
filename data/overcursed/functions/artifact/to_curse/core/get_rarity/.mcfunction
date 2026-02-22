#> overcursed:artifact/to_curse/core/get_rarity/
#
# 
# @input
#   storage api: Id : number
#   storage asset:artifact RarityRegistry : number[]
# @output
#   args : number
# @within function overcursed:artifact/to_curse/core/

# loop
    # rarity 1
        data modify storage api: Registry set from storage asset:artifact RarityRegistry[1]
        data modify storage api: Result set value false 
        function overcursed:artifact/to_curse/core/get_rarity/loop
        execute if data storage api: {Result: 1b} run return 1
    # rarity 2
        data modify storage api: Registry set from storage asset:artifact RarityRegistry[2]
        data modify storage api: Result set value false 
        function overcursed:artifact/to_curse/core/get_rarity/loop
        execute if data storage api: {Result: 1b} run return 2
    # rarity 3
        data modify storage api: Registry set from storage asset:artifact RarityRegistry[3]
        data modify storage api: Result set value false 
        function overcursed:artifact/to_curse/core/get_rarity/loop
        execute if data storage api: {Result: 1b} run return 3
    # rarity 4
        data modify storage api: Registry set from storage asset:artifact RarityRegistry[4]
        data modify storage api: Result set value false 
        function overcursed:artifact/to_curse/core/get_rarity/loop
        execute if data storage api: {Result: 1b} run return 4
    # no rarity
        return 0
