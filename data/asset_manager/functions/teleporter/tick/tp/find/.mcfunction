#> asset_manager:teleporter/tick/tp/find/
#
# テレポート先の座標を記録しておく
#
# @within function asset_manager:teleporter/tick/active
# @patch

# 一旦削除しておく
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.TPTargetPos
# patch void行きテレポーターの座標をずらしているのでそれを指定
    execute if entity @e[type=item_display,tag=TPStar.Active,distance=..0.07,limit=1] run function asset_manager:teleporter/tick/tp/find/store_pos
# 取得を試みる
    execute anchored eyes positioned ^ ^ ^1.4 summon marker run function asset_manager:teleporter/tick/tp/find/recursive
