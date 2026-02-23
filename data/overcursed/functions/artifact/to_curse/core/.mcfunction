#> overcursed:artifact/to_curse/core/
#
# 
# @output
#   return : boolean
# @within function overcursed:artifact/to_curse/

# get_rarity
    execute store result storage api: Rarity int 1 run function overcursed:artifact/to_curse/core/get_rarity/

# reset
    data remove storage api: Registry
    data remove storage api: Fetch
    data remove storage api: FetchResult

# シャード産でなければ失敗
    execute if data storage api: {Rarity: 0} run return fail

# curse量を計算
    scoreboard players set $Curse Temporary 0
    # rarity
        execute if data storage api: {Rarity: 1} run scoreboard players set $Curse Temporary 1
        execute if data storage api: {Rarity: 2} run scoreboard players set $Curse Temporary 4
        execute if data storage api: {Rarity: 3} run scoreboard players set $Curse Temporary 16
        execute if data storage api: {Rarity: 4} run scoreboard players set $Curse Temporary 64
    # if (Args.Cursed) {Curse += Args.CurseValue}
        execute if data storage api: {Cursed: 1b} store result score $CurseValue Temporary run data get storage api: CurseValue 0.5
        scoreboard players operation $Curse Temporary += $CurseValue Temporary

# プレイヤーに与える
    scoreboard players operation @s OC.Curse += $Curse Temporary

# reset
    scoreboard players reset $Curse Temporary
    scoreboard players reset $CurseValue Temporary
    data remove storage api: Rarity

# 成功判定を返す
    return 1
