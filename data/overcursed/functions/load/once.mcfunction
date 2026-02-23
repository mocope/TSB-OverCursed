#> overcursed:load/once
#
# 
#
# @within function overcursed:load/

# Migration
    # execute if data storage overcursed: Settings{Version: "v0.0.0"}

# バージョンを設定
    data modify storage overcursed: Settings.Version set value "v0.0.0"

# scoreboard
    scoreboard objectives add OC.Curse dummy
    scoreboard objectives add OC.RoomOwner dummy
    scoreboard objectives add OC.NoOwnerCount dummy

# global
    scoreboard players set $OC.MaxCurse Global 100
    scoreboard players set $OC.RoomPosition Global 0

# the void forceload
    forceload add 2048 2048 2048 2048
# marker 0-0-800-0-800
    summon marker 2048.0 -63.0 2048.0 {UUID: [I;0,2048,0,2048]}
