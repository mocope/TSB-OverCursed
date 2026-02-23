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

# global
    scoreboard players set $OC.MaxCurse Global 100
