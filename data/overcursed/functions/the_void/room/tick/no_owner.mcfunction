#> overcursed:the_void/room/tick/no_owner
#
# 
#
# @within function overcursed:the_void/room/tick/

# score
    scoreboard players add @s OC.NoOwnerCount 1

# プレイヤーが戻ってくればリセット
    execute if entity @p[tag=OC.NoOwner] run tag @s remove OC.NoOwner
    execute if entity @p[tag=OC.NoOwner] run scoreboard players reset @s OC.NoOwnerCount

# 1200tick戻ってこなければ部屋を破棄
    execute if score @s OC.NoOwnerCount matches 1200.. run function overcursed:the_void/room/remove/no_owner
